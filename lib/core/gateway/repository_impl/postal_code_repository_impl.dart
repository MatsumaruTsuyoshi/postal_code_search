import 'package:postal_code_search/core/domain/entity/PostalCodeResponse.dart';
import 'package:postal_code_search/core/domain/repository/postal_code_repository.dart';
import 'package:postal_code_search/core/gateway/datasource/postal_code_datasource.dart';

class PostalCodeRepositoryImpl implements PostalCodeRepository {
  PostalCodeRepositoryImpl(this._postalCodeDatasource);
  final PostalCodeDatasource _postalCodeDatasource;

  @override
  Future<PostalCodeResponse> fetchRepositories(String postalCode) {
    return _postalCodeDatasource.fetchRepositories(postalCode);
  }
}
