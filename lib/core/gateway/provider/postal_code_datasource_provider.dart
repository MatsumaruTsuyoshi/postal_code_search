import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:postal_code_search/core/gateway/datasource/postal_code_datasource.dart';
import 'package:postal_code_search/core/gateway/datasource_impl/postal_code_datasource_impl.dart';

final postalCodeDatasourceProvider =
    Provider<PostalCodeDatasource>((ref) => PostalCodeDatasourceImpl());
