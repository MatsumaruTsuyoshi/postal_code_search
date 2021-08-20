import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:postal_code_search/core/domain/repository/postal_code_repository.dart';
import 'package:postal_code_search/core/failure/failure.dart';
import 'package:postal_code_search/modules/controller/postal_code_state.dart';

class PostalCodeController extends StateNotifier<AsyncValue<PostalCodeState>> {
  PostalCodeController(PostalCodeRepository postalCodeRepository)
      : _postalCodeRepository = postalCodeRepository,
        super(AsyncValue.data(
            PostalCodeState(address1: '', address2: '', address3: '')));
  final PostalCodeRepository _postalCodeRepository;

  Future<void> addressSearch(String postalCode) async {
    try {
      state = AsyncValue.loading();
      final data = await _postalCodeRepository.fetchRepositories(postalCode);
      state = AsyncValue.data(PostalCodeState(
        address1: data.address1,
        address2: data.address2,
        address3: data.address3,
      ));
    } catch (e) {
      state = AsyncValue.error(e);
    }
  }
}
