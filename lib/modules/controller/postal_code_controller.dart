import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:postal_code_search/core/domain/repository/postal_code_repository.dart';
import 'package:postal_code_search/core/gateway/provider/postal_code_repository_provider.dart';
import 'package:postal_code_search/modules/controller/postal_code_input/postal_code_input_state.dart';
import 'package:postal_code_search/modules/controller/postal_code_state.dart';

class PostalCodeController extends StateNotifier<AsyncValue<PostalCodeState>> {
  PostalCodeController(PostalCodeRepository postalCodeRepository,
      PostalCodeInputState postalCodeInputState)
      : _postalCodeRepository = postalCodeRepository,
        _postalCodeInputState = postalCodeInputState,
        super(AsyncValue.data(
            PostalCodeState(address1: '', address2: '', address3: '')));
  final PostalCodeRepository _postalCodeRepository;
  final PostalCodeInputState _postalCodeInputState;

  Future<void> addressSearch() async {
    state = AsyncValue.loading();
    final data = await _postalCodeRepository
        .fetchRepositories(_postalCodeInputState.inputText);
    data.whenWithResult(
        (value) => state = AsyncValue.data(PostalCodeState(
              address1: value.value.address1,
              address2: value.value.address2,
              address3: value.value.address3,
            )),
        (error) => state = AsyncValue.error(error.exception));
  }
}
