import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:postal_code_search/core/domain/repository/postal_code_repository.dart';
import 'package:postal_code_search/core/gateway/provider/postal_code_datasource_provider.dart';
import 'package:postal_code_search/core/gateway/repository_impl/postal_code_repository_impl.dart';

final postalCodeRepositoryProvider = Provider<PostalCodeRepository>(
    (ref) => PostalCodeRepositoryImpl(ref.watch(postalCodeDatasourceProvider)));
