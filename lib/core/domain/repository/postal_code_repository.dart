import 'package:postal_code_search/core/domain/entity/PostalCodeResponse.dart';
import 'package:postal_code_search/core/failure/failure.dart';

abstract class PostalCodeRepository {
  ///郵便番号を取得してくれる
  Future<Result<PostalCodeResponse>> fetchRepositories(String postalCode);
}
