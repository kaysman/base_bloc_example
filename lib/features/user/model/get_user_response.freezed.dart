// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetMyInfoResponse _$GetMyInfoResponseFromJson(Map<String, dynamic> json) {
  return _GetMyInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$GetMyInfoResponse {
  ErrorModel? get error => throw _privateConstructorUsedError;
  UserModel? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMyInfoResponseCopyWith<GetMyInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMyInfoResponseCopyWith<$Res> {
  factory $GetMyInfoResponseCopyWith(
          GetMyInfoResponse value, $Res Function(GetMyInfoResponse) then) =
      _$GetMyInfoResponseCopyWithImpl<$Res, GetMyInfoResponse>;
  @useResult
  $Res call({ErrorModel? error, UserModel? response});

  $ErrorModelCopyWith<$Res>? get error;
  $UserModelCopyWith<$Res>? get response;
}

/// @nodoc
class _$GetMyInfoResponseCopyWithImpl<$Res, $Val extends GetMyInfoResponse>
    implements $GetMyInfoResponseCopyWith<$Res> {
  _$GetMyInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorModelCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorModelCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetMyInfoResponseCopyWith<$Res>
    implements $GetMyInfoResponseCopyWith<$Res> {
  factory _$$_GetMyInfoResponseCopyWith(_$_GetMyInfoResponse value,
          $Res Function(_$_GetMyInfoResponse) then) =
      __$$_GetMyInfoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ErrorModel? error, UserModel? response});

  @override
  $ErrorModelCopyWith<$Res>? get error;
  @override
  $UserModelCopyWith<$Res>? get response;
}

/// @nodoc
class __$$_GetMyInfoResponseCopyWithImpl<$Res>
    extends _$GetMyInfoResponseCopyWithImpl<$Res, _$_GetMyInfoResponse>
    implements _$$_GetMyInfoResponseCopyWith<$Res> {
  __$$_GetMyInfoResponseCopyWithImpl(
      _$_GetMyInfoResponse _value, $Res Function(_$_GetMyInfoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? response = freezed,
  }) {
    return _then(_$_GetMyInfoResponse(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMyInfoResponse implements _GetMyInfoResponse {
  const _$_GetMyInfoResponse({this.error, this.response});

  factory _$_GetMyInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetMyInfoResponseFromJson(json);

  @override
  final ErrorModel? error;
  @override
  final UserModel? response;

  @override
  String toString() {
    return 'GetMyInfoResponse(error: $error, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMyInfoResponse &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMyInfoResponseCopyWith<_$_GetMyInfoResponse> get copyWith =>
      __$$_GetMyInfoResponseCopyWithImpl<_$_GetMyInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMyInfoResponseToJson(
      this,
    );
  }
}

abstract class _GetMyInfoResponse implements GetMyInfoResponse {
  const factory _GetMyInfoResponse(
      {final ErrorModel? error,
      final UserModel? response}) = _$_GetMyInfoResponse;

  factory _GetMyInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_GetMyInfoResponse.fromJson;

  @override
  ErrorModel? get error;
  @override
  UserModel? get response;
  @override
  @JsonKey(ignore: true)
  _$$_GetMyInfoResponseCopyWith<_$_GetMyInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
