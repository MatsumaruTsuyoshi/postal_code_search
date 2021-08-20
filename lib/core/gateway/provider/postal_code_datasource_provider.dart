import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:postal_code_search/core/gateway/datasource_impl/postal_code_datasource_impl.dart';

final postalCodeDatasourceProvider =
    Provider((ref) => PostalCodeDatasourceImpl());
