import 'package:postal_code_search/core/failure/failure.dart';

class NotFoundAddressFailure extends Failure {
  NotFoundAddressFailure() : super('住所が見つかりませんでした。');
}
