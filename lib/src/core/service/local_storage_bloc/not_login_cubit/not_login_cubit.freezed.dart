// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'not_login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotLoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic response) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic response)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLoginInitial value) initial,
    required TResult Function(_NotLoginLoading value) loading,
    required TResult Function(_NotLoginSucess value) success,
    required TResult Function(_NotLoginFailed value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotLoginInitial value)? initial,
    TResult? Function(_NotLoginLoading value)? loading,
    TResult? Function(_NotLoginSucess value)? success,
    TResult? Function(_NotLoginFailed value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLoginInitial value)? initial,
    TResult Function(_NotLoginLoading value)? loading,
    TResult Function(_NotLoginSucess value)? success,
    TResult Function(_NotLoginFailed value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotLoginStateCopyWith<$Res> {
  factory $NotLoginStateCopyWith(
          NotLoginState value, $Res Function(NotLoginState) then) =
      _$NotLoginStateCopyWithImpl<$Res, NotLoginState>;
}

/// @nodoc
class _$NotLoginStateCopyWithImpl<$Res, $Val extends NotLoginState>
    implements $NotLoginStateCopyWith<$Res> {
  _$NotLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotLoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotLoginInitialImplCopyWith<$Res> {
  factory _$$NotLoginInitialImplCopyWith(_$NotLoginInitialImpl value,
          $Res Function(_$NotLoginInitialImpl) then) =
      __$$NotLoginInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotLoginInitialImplCopyWithImpl<$Res>
    extends _$NotLoginStateCopyWithImpl<$Res, _$NotLoginInitialImpl>
    implements _$$NotLoginInitialImplCopyWith<$Res> {
  __$$NotLoginInitialImplCopyWithImpl(
      _$NotLoginInitialImpl _value, $Res Function(_$NotLoginInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotLoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotLoginInitialImpl implements _NotLoginInitial {
  _$NotLoginInitialImpl();

  @override
  String toString() {
    return 'NotLoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotLoginInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic response) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic response)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLoginInitial value) initial,
    required TResult Function(_NotLoginLoading value) loading,
    required TResult Function(_NotLoginSucess value) success,
    required TResult Function(_NotLoginFailed value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotLoginInitial value)? initial,
    TResult? Function(_NotLoginLoading value)? loading,
    TResult? Function(_NotLoginSucess value)? success,
    TResult? Function(_NotLoginFailed value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLoginInitial value)? initial,
    TResult Function(_NotLoginLoading value)? loading,
    TResult Function(_NotLoginSucess value)? success,
    TResult Function(_NotLoginFailed value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _NotLoginInitial implements NotLoginState {
  factory _NotLoginInitial() = _$NotLoginInitialImpl;
}

/// @nodoc
abstract class _$$NotLoginLoadingImplCopyWith<$Res> {
  factory _$$NotLoginLoadingImplCopyWith(_$NotLoginLoadingImpl value,
          $Res Function(_$NotLoginLoadingImpl) then) =
      __$$NotLoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotLoginLoadingImplCopyWithImpl<$Res>
    extends _$NotLoginStateCopyWithImpl<$Res, _$NotLoginLoadingImpl>
    implements _$$NotLoginLoadingImplCopyWith<$Res> {
  __$$NotLoginLoadingImplCopyWithImpl(
      _$NotLoginLoadingImpl _value, $Res Function(_$NotLoginLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotLoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotLoginLoadingImpl implements _NotLoginLoading {
  _$NotLoginLoadingImpl();

  @override
  String toString() {
    return 'NotLoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotLoginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic response) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic response)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLoginInitial value) initial,
    required TResult Function(_NotLoginLoading value) loading,
    required TResult Function(_NotLoginSucess value) success,
    required TResult Function(_NotLoginFailed value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotLoginInitial value)? initial,
    TResult? Function(_NotLoginLoading value)? loading,
    TResult? Function(_NotLoginSucess value)? success,
    TResult? Function(_NotLoginFailed value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLoginInitial value)? initial,
    TResult Function(_NotLoginLoading value)? loading,
    TResult Function(_NotLoginSucess value)? success,
    TResult Function(_NotLoginFailed value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NotLoginLoading implements NotLoginState {
  factory _NotLoginLoading() = _$NotLoginLoadingImpl;
}

/// @nodoc
abstract class _$$NotLoginSucessImplCopyWith<$Res> {
  factory _$$NotLoginSucessImplCopyWith(_$NotLoginSucessImpl value,
          $Res Function(_$NotLoginSucessImpl) then) =
      __$$NotLoginSucessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic response});
}

/// @nodoc
class __$$NotLoginSucessImplCopyWithImpl<$Res>
    extends _$NotLoginStateCopyWithImpl<$Res, _$NotLoginSucessImpl>
    implements _$$NotLoginSucessImplCopyWith<$Res> {
  __$$NotLoginSucessImplCopyWithImpl(
      _$NotLoginSucessImpl _value, $Res Function(_$NotLoginSucessImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotLoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$NotLoginSucessImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$NotLoginSucessImpl implements _NotLoginSucess {
  _$NotLoginSucessImpl({this.response});

  @override
  final dynamic response;

  @override
  String toString() {
    return 'NotLoginState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotLoginSucessImpl &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  /// Create a copy of NotLoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotLoginSucessImplCopyWith<_$NotLoginSucessImpl> get copyWith =>
      __$$NotLoginSucessImplCopyWithImpl<_$NotLoginSucessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic response) success,
    required TResult Function(String error) failure,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic response)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLoginInitial value) initial,
    required TResult Function(_NotLoginLoading value) loading,
    required TResult Function(_NotLoginSucess value) success,
    required TResult Function(_NotLoginFailed value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotLoginInitial value)? initial,
    TResult? Function(_NotLoginLoading value)? loading,
    TResult? Function(_NotLoginSucess value)? success,
    TResult? Function(_NotLoginFailed value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLoginInitial value)? initial,
    TResult Function(_NotLoginLoading value)? loading,
    TResult Function(_NotLoginSucess value)? success,
    TResult Function(_NotLoginFailed value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NotLoginSucess implements NotLoginState {
  factory _NotLoginSucess({final dynamic response}) = _$NotLoginSucessImpl;

  dynamic get response;

  /// Create a copy of NotLoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotLoginSucessImplCopyWith<_$NotLoginSucessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotLoginFailedImplCopyWith<$Res> {
  factory _$$NotLoginFailedImplCopyWith(_$NotLoginFailedImpl value,
          $Res Function(_$NotLoginFailedImpl) then) =
      __$$NotLoginFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$NotLoginFailedImplCopyWithImpl<$Res>
    extends _$NotLoginStateCopyWithImpl<$Res, _$NotLoginFailedImpl>
    implements _$$NotLoginFailedImplCopyWith<$Res> {
  __$$NotLoginFailedImplCopyWithImpl(
      _$NotLoginFailedImpl _value, $Res Function(_$NotLoginFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotLoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$NotLoginFailedImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotLoginFailedImpl implements _NotLoginFailed {
  _$NotLoginFailedImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'NotLoginState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotLoginFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of NotLoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotLoginFailedImplCopyWith<_$NotLoginFailedImpl> get copyWith =>
      __$$NotLoginFailedImplCopyWithImpl<_$NotLoginFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic response) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic response)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic response)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLoginInitial value) initial,
    required TResult Function(_NotLoginLoading value) loading,
    required TResult Function(_NotLoginSucess value) success,
    required TResult Function(_NotLoginFailed value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotLoginInitial value)? initial,
    TResult? Function(_NotLoginLoading value)? loading,
    TResult? Function(_NotLoginSucess value)? success,
    TResult? Function(_NotLoginFailed value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLoginInitial value)? initial,
    TResult Function(_NotLoginLoading value)? loading,
    TResult Function(_NotLoginSucess value)? success,
    TResult Function(_NotLoginFailed value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _NotLoginFailed implements NotLoginState {
  factory _NotLoginFailed({required final String error}) = _$NotLoginFailedImpl;

  String get error;

  /// Create a copy of NotLoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotLoginFailedImplCopyWith<_$NotLoginFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
