import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:postal_code_search/modules/controller/postal_code_input/postal_code_input_state.dart';

final postalCodeInputProvider =
    StateNotifierProvider<PostalCodeInputNotifier, PostalCodeInputState>(
        (ref) => PostalCodeInputNotifier());

class PostalCodeInputNotifier extends StateNotifier<PostalCodeInputState> {
  PostalCodeInputNotifier() : super(PostalCodeInputState(''));

  void setText(String value) {
    state = PostalCodeInputState(value);
  }
}
