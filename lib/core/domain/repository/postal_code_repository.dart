import 'package:postal_code_search/core/domain/entity/PostalCodeResponse.dart';

abstract class PostalCodeRepository {
  Future<PostalCodeResponse> fetchRepositories(String postalCode);
}
