// import 'package:flutter_test/flutter_test.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
// import 'package:postal_code_search/core/failure/failure.dart';
// import 'package:postal_code_search/core/gateway/datasource/postal_code_datasource.dart';
// import 'package:postal_code_search/core/gateway/repository_impl/postal_code_repository_impl.dart';
// import 'package:postal_code_search/modules/controller/postal_code_controller.dart';
// import 'package:postal_code_search/modules/controller/postal_code_provider.dart';
// import 'package:postal_code_search/modules/controller/postal_code_state.dart';
//
// import 'datasource_test.mocks.dart';
//
// @GenerateMocks([PostalCodeDatasource])
// void main() {
//   var postalCodeDoatasource = MockPostalCodeDatasource();
//   test('不正な郵便番号なとき、データを取得したら、エラーが帰ってくる', () async {
//     when(postalCodeDoatasource.fetchRepositories('')).thenAnswer(
//       (_) async => Error(Exception('エラーだよ')),
//     );
//     final container = ProviderContainer(
//       overrides: [
//         postalCodeProvider.overrideWithProvider(
//           StateNotifierProvider(
//             (ref) => PostalCodeController(
//               PostalCodeRepositoryImpl(postalCodeDoatasource),
//             ),
//           ),
//         ),
//       ],
//     );
//     await container.read(postalCodeProvider.notifier).addressSearch();
//     final data = container.read(postalCodeProvider.notifier).state;
//     Exception? error;
//     data.when(
//         data: (value) {},
//         loading: () {},
//         error: (e, __) {
//           error = e as Exception?;
//         });
//
//     //仮データとして差し込んだ文言が画面上に表示されているかを確認。
//     expect(error, Exception('エラーだよ'));
//   });
// }
