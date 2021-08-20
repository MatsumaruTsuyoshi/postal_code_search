// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:postal_code_search/app.dart';
import 'package:postal_code_search/core/domain/entity/PostalCodeResponse.dart';
import 'package:postal_code_search/core/gateway/datasource/postal_code_datasource.dart';
import 'package:mockito/mockito.dart';
import 'package:postal_code_search/core/gateway/repository_impl/postal_code_repository_impl.dart';
import 'package:postal_code_search/modules/controller/postal_code_controller.dart';
import 'package:postal_code_search/modules/controller/postal_code_provider.dart';
import 'package:postal_code_search/modules/controller/postal_code_state.dart';
import 'datasource_test.mocks.dart';
import 'package:mockito/annotations.dart';
import 'package:postal_code_search/main.dart';

@GenerateMocks([PostalCodeDatasource])
void main() {
  var postalCodeDoatasource = MockPostalCodeDatasource();
  test('データソースで無事にデータが取得できたと仮定して、stateまでデータが運ばれているか', () async {
    when(postalCodeDoatasource.fetchRepositories('')).thenAnswer(
      (_) async => PostalCodeResponse(
        address1: '広島県',
        address2: '庄原市',
        address3: '上原町',
      ),
    );
    final container = ProviderContainer(
      overrides: [
        postalCodeProvider.overrideWithProvider(
          StateNotifierProvider(
            (ref) => PostalCodeController(
              PostalCodeRepositoryImpl(postalCodeDoatasource),
            ),
          ),
        ),
      ],
    );
    await container.read(postalCodeProvider.notifier).addressSearch('');
    final data = container.read(postalCodeProvider).data!.value.address1;
    //仮データとして差し込んだ文言が画面上に表示されているかを確認。
    expect(data, '広島県');
  });
}
