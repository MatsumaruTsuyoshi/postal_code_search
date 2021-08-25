import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:postal_code_search/core/gateway/provider/postal_code_repository_provider.dart';
import 'package:postal_code_search/modules/controller/postal_code_controller.dart';
import 'package:postal_code_search/modules/controller/postal_code_input/postal_code_input_controller.dart';
import 'package:postal_code_search/modules/controller/postal_code_state.dart';

final postalCodeProvider =
    StateNotifierProvider<PostalCodeController, AsyncValue<PostalCodeState>>(
        (ref) => PostalCodeController(ref.watch(postalCodeRepositoryProvider),
            ref.watch(postalCodeInputProvider)));
