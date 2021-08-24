import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:postal_code_search/core/env/env.dart';

import '../../domain/entity/PostalCodeResponse.dart';
import '../../failure/failure.dart';
import '../datasource/postal_code_datasource.dart';

class PostalCodeDatasourceImpl extends PostalCodeDatasource {
  @override
  Future<Result<PostalCodeResponse>> fetchRepositories(
      String postalCode) async {
    final url = Uri.parse('${Env.postalBaseUrl}$postalCode');
    final response = await http.get(url);

    print(response.body);
    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> map =
            jsonDecode(response.body)['results'][0];
        final address = PostalCodeResponse.fromJson(map);
        return Success(address);
      } catch (e) {
        return Error(Exception(
            jsonDecode(response.body)['message'] ?? '入力された郵便番号は存在しません'));
      }
    }
    return Error(Exception('通信エラー'));
  }
}
