// Mocks generated by Mockito 5.0.14 from annotations
// in postal_code_search/test/datasource/datasource_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:postal_code_search/core/domain/entity/PostalCodeResponse.dart'
    as _i5;
import 'package:postal_code_search/core/failure/failure.dart' as _i2;
import 'package:postal_code_search/core/gateway/datasource/postal_code_datasource.dart'
    as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeResult_0<T> extends _i1.Fake implements _i2.Result<T> {}

/// A class which mocks [PostalCodeDatasource].
///
/// See the documentation for Mockito's code generation for more information.
class MockPostalCodeDatasource extends _i1.Mock
    implements _i3.PostalCodeDatasource {
  MockPostalCodeDatasource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Result<_i5.PostalCodeResponse>> fetchRepositories(
          String? postalCode) =>
      (super.noSuchMethod(Invocation.method(#fetchRepositories, [postalCode]),
              returnValue: Future<_i2.Result<_i5.PostalCodeResponse>>.value(
                  _FakeResult_0<_i5.PostalCodeResponse>()))
          as _i4.Future<_i2.Result<_i5.PostalCodeResponse>>);
  @override
  String toString() => super.toString();
}
