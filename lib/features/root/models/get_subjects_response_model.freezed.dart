// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_subjects_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetSubjectsListResponse _$GetSubjectsListResponseFromJson(
    Map<String, dynamic> json) {
  return _GetSubjectsListResponse.fromJson(json);
}

/// @nodoc
mixin _$GetSubjectsListResponse {
  ErrorModel? get error => throw _privateConstructorUsedError;
  List<SubjectModel>? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSubjectsListResponseCopyWith<GetSubjectsListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSubjectsListResponseCopyWith<$Res> {
  factory $GetSubjectsListResponseCopyWith(GetSubjectsListResponse value,
          $Res Function(GetSubjectsListResponse) then) =
      _$GetSubjectsListResponseCopyWithImpl<$Res, GetSubjectsListResponse>;
  @useResult
  $Res call({ErrorModel? error, List<SubjectModel>? response});

  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class _$GetSubjectsListResponseCopyWithImpl<$Res,
        $Val extends GetSubjectsListResponse>
    implements $GetSubjectsListResponseCopyWith<$Res> {
  _$GetSubjectsListResponseCopyWithImpl(this._value, this._then);

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
              as List<SubjectModel>?,
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
}

/// @nodoc
abstract class _$$_GetSubjectsListResponseCopyWith<$Res>
    implements $GetSubjectsListResponseCopyWith<$Res> {
  factory _$$_GetSubjectsListResponseCopyWith(_$_GetSubjectsListResponse value,
          $Res Function(_$_GetSubjectsListResponse) then) =
      __$$_GetSubjectsListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ErrorModel? error, List<SubjectModel>? response});

  @override
  $ErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_GetSubjectsListResponseCopyWithImpl<$Res>
    extends _$GetSubjectsListResponseCopyWithImpl<$Res,
        _$_GetSubjectsListResponse>
    implements _$$_GetSubjectsListResponseCopyWith<$Res> {
  __$$_GetSubjectsListResponseCopyWithImpl(_$_GetSubjectsListResponse _value,
      $Res Function(_$_GetSubjectsListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? response = freezed,
  }) {
    return _then(_$_GetSubjectsListResponse(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
      response: freezed == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<SubjectModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetSubjectsListResponse implements _GetSubjectsListResponse {
  const _$_GetSubjectsListResponse(
      {this.error, final List<SubjectModel>? response})
      : _response = response;

  factory _$_GetSubjectsListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetSubjectsListResponseFromJson(json);

  @override
  final ErrorModel? error;
  final List<SubjectModel>? _response;
  @override
  List<SubjectModel>? get response {
    final value = _response;
    if (value == null) return null;
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetSubjectsListResponse(error: $error, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSubjectsListResponse &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, error, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSubjectsListResponseCopyWith<_$_GetSubjectsListResponse>
      get copyWith =>
          __$$_GetSubjectsListResponseCopyWithImpl<_$_GetSubjectsListResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetSubjectsListResponseToJson(
      this,
    );
  }
}

abstract class _GetSubjectsListResponse implements GetSubjectsListResponse {
  const factory _GetSubjectsListResponse(
      {final ErrorModel? error,
      final List<SubjectModel>? response}) = _$_GetSubjectsListResponse;

  factory _GetSubjectsListResponse.fromJson(Map<String, dynamic> json) =
      _$_GetSubjectsListResponse.fromJson;

  @override
  ErrorModel? get error;
  @override
  List<SubjectModel>? get response;
  @override
  @JsonKey(ignore: true)
  _$$_GetSubjectsListResponseCopyWith<_$_GetSubjectsListResponse>
      get copyWith => throw _privateConstructorUsedError;
}
