// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'postal_code_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostalCodeStateTearOff {
  const _$PostalCodeStateTearOff();

  _PostalCodeState call(
      {String address1 = '', String address2 = '', String address3 = ''}) {
    return _PostalCodeState(
      address1: address1,
      address2: address2,
      address3: address3,
    );
  }
}

/// @nodoc
const $PostalCodeState = _$PostalCodeStateTearOff();

/// @nodoc
mixin _$PostalCodeState {
  String get address1 => throw _privateConstructorUsedError;
  String get address2 => throw _privateConstructorUsedError;
  String get address3 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostalCodeStateCopyWith<PostalCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostalCodeStateCopyWith<$Res> {
  factory $PostalCodeStateCopyWith(
          PostalCodeState value, $Res Function(PostalCodeState) then) =
      _$PostalCodeStateCopyWithImpl<$Res>;
  $Res call({String address1, String address2, String address3});
}

/// @nodoc
class _$PostalCodeStateCopyWithImpl<$Res>
    implements $PostalCodeStateCopyWith<$Res> {
  _$PostalCodeStateCopyWithImpl(this._value, this._then);

  final PostalCodeState _value;
  // ignore: unused_field
  final $Res Function(PostalCodeState) _then;

  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? address3 = freezed,
  }) {
    return _then(_value.copyWith(
      address1: address1 == freezed
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: address2 == freezed
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      address3: address3 == freezed
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PostalCodeStateCopyWith<$Res>
    implements $PostalCodeStateCopyWith<$Res> {
  factory _$PostalCodeStateCopyWith(
          _PostalCodeState value, $Res Function(_PostalCodeState) then) =
      __$PostalCodeStateCopyWithImpl<$Res>;
  @override
  $Res call({String address1, String address2, String address3});
}

/// @nodoc
class __$PostalCodeStateCopyWithImpl<$Res>
    extends _$PostalCodeStateCopyWithImpl<$Res>
    implements _$PostalCodeStateCopyWith<$Res> {
  __$PostalCodeStateCopyWithImpl(
      _PostalCodeState _value, $Res Function(_PostalCodeState) _then)
      : super(_value, (v) => _then(v as _PostalCodeState));

  @override
  _PostalCodeState get _value => super._value as _PostalCodeState;

  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? address3 = freezed,
  }) {
    return _then(_PostalCodeState(
      address1: address1 == freezed
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: address2 == freezed
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      address3: address3 == freezed
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostalCodeState implements _PostalCodeState {
  const _$_PostalCodeState(
      {this.address1 = '', this.address2 = '', this.address3 = ''});

  @JsonKey(defaultValue: '')
  @override
  final String address1;
  @JsonKey(defaultValue: '')
  @override
  final String address2;
  @JsonKey(defaultValue: '')
  @override
  final String address3;

  @override
  String toString() {
    return 'PostalCodeState(address1: $address1, address2: $address2, address3: $address3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostalCodeState &&
            (identical(other.address1, address1) ||
                const DeepCollectionEquality()
                    .equals(other.address1, address1)) &&
            (identical(other.address2, address2) ||
                const DeepCollectionEquality()
                    .equals(other.address2, address2)) &&
            (identical(other.address3, address3) ||
                const DeepCollectionEquality()
                    .equals(other.address3, address3)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address1) ^
      const DeepCollectionEquality().hash(address2) ^
      const DeepCollectionEquality().hash(address3);

  @JsonKey(ignore: true)
  @override
  _$PostalCodeStateCopyWith<_PostalCodeState> get copyWith =>
      __$PostalCodeStateCopyWithImpl<_PostalCodeState>(this, _$identity);
}

abstract class _PostalCodeState implements PostalCodeState {
  const factory _PostalCodeState(
      {String address1, String address2, String address3}) = _$_PostalCodeState;

  @override
  String get address1 => throw _privateConstructorUsedError;
  @override
  String get address2 => throw _privateConstructorUsedError;
  @override
  String get address3 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostalCodeStateCopyWith<_PostalCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
