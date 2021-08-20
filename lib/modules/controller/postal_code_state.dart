import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'postal_code_state.freezed.dart';

@freezed
class PostalCodeState with _$PostalCodeState {
  const factory PostalCodeState({
    @Default('') String address1,
    @Default('') String address2,
    @Default('') String address3,
  }) = _PostalCodeState;
}

//flutter packages pub run build_runner build --delete-conflicting-outputs
