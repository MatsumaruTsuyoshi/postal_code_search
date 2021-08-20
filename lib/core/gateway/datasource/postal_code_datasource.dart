import 'package:postal_code_search/core/domain/entity/PostalCodeResponse.dart';

abstract class PostalCodeDatasource {
  Future<PostalCodeResponse> fetchRepositories(String postalCode);
}
