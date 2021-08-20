import 'dart:convert';

import 'package:postal_code_search/core/domain/entity/PostalCodeResponse.dart';
import 'package:postal_code_search/core/failure/convert_failure.dart';
import 'package:postal_code_search/core/failure/not_found_address.dart';
import 'package:postal_code_search/core/gateway/datasource/postal_code_datasource.dart';
import 'package:http/http.dart' as http;

class PostalCodeDatasourceImpl extends PostalCodeDatasource {
  @override
  Future<PostalCodeResponse> fetchRepositories(String postalCode) async {
    final url = Uri.parse(
        'https://zipcloud.ibsnet.co.jp/api/search?zipcode=$postalCode');
    final http.Response response = await http.get(url);

    print(response.body);
    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> map =
            jsonDecode(response.body)['results'][0];
        final address = PostalCodeResponse.fromJson(map);
        return address;
      } catch (e) {
        throw jsonDecode(response.body)['message'] ?? '入力された郵便番号は存在しません';
      }
    } else {
      throw NotFoundAddressFailure().failureMessage;
    }
  }
}
