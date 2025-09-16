// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogoutState {
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
    required TResult Function(_logoutInitial value) initial,
    required TResult Function(_logoutLoading value) loading,
    required TResult Function(_logoutSucess value) success,
    required TResult Function(_LogoutFailed value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_logoutInitial value)? initial,
    TResult? Function(_logoutLoading value)? loading,
    TResult? Function(_logoutSucess value)? success,
    TResult? Function(_LogoutFailed value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_logoutInitial value)? initial,
    TResult Function(_logoutLoading value)? loading,
    TResult Function(_logoutSucess value)? success,
    TResult Function(_LogoutFailed value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutStateCopyWith<$Res> {
  factory $LogoutStateCopyWith(
          LogoutState value, $Res Function(LogoutState) then) =
      _$LogoutStateCopyWithImpl<$Res, LogoutState>;
}

/// @nodoc
class _$LogoutStateCopyWithImpl<$Res, $Val extends LogoutState>
    implements $LogoutStateCopyWith<$Res> {
  _$LogoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$logoutInitialImplCopyWith<$Res> {
  factory _$$logoutInitialImplCopyWith(
          _$logoutInitialImpl value, $Res Function(_$logoutInitialImpl) then) =
      __$$logoutInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$logoutInitialImplCopyWithImpl<$Res>
    extends _$LogoutStateCopyWithImpl<$Res, _$logoutInitialImpl>
    implements _$$logoutInitialImplCopyWith<$Res> {
  __$$logoutInitialImplCopyWithImpl(
      _$logoutInitialImpl _value, $Res Function(_$logoutInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$logoutInitialImpl implements _logoutInitial {
  _$logoutInitialImpl();

  @override
  String toString() {
    return 'LogoutState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$logoutInitialImpl);
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
    required TResult Function(_logoutInitial value) initial,
    required TResult Function(_logoutLoading value) loading,
    required TResult Function(_logoutSucess value) success,
    required TResult Function(_LogoutFailed value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_logoutInitial value)? initial,
    TResult? Function(_logoutLoading value)? loading,
    TResult? Function(_logoutSucess value)? success,
    TResult? Function(_LogoutFailed value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_logoutInitial value)? initial,
    TResult Function(_logoutLoading value)? loading,
    TResult Function(_logoutSucess value)? success,
    TResult Function(_LogoutFailed value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _logoutInitial implements LogoutState {
  factory _logoutInitial() = _$logoutInitialImpl;
}

/// @nodoc
abstract class _$$logoutLoadingImplCopyWith<$Res> {
  factory _$$logoutLoadingImplCopyWith(
          _$logoutLoadingImpl value, $Res Function(_$logoutLoadingImpl) then) =
      __$$logoutLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$logoutLoadingImplCopyWithImpl<$Res>
    extends _$LogoutStateCopyWithImpl<$Res, _$logoutLoadingImpl>
    implements _$$logoutLoadingImplCopyWith<$Res> {
  __$$logoutLoadingImplCopyWithImpl(
      _$logoutLoadingImpl _value, $Res Function(_$logoutLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$logoutLoadingImpl implements _logoutLoading {
  _$logoutLoadingImpl();

  @override
  String toString() {
    return 'LogoutState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$logoutLoadingImpl);
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
    required TResult Function(_logoutInitial value) initial,
    required TResult Function(_logoutLoading value) loading,
    required TResult Function(_logoutSucess value) success,
    required TResult Function(_LogoutFailed value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_logoutInitial value)? initial,
    TResult? Function(_logoutLoading value)? loading,
    TResult? Function(_logoutSucess value)? success,
    TResult? Function(_LogoutFailed value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_logoutInitial value)? initial,
    TResult Function(_logoutLoading value)? loading,
    TResult Function(_logoutSucess value)? success,
    TResult Function(_LogoutFailed value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _logoutLoading implements LogoutState {
  factory _logoutLoading() = _$logoutLoadingImpl;
}

/// @nodoc
abstract class _$$logoutSucessImplCopyWith<$Res> {
  factory _$$logoutSucessImplCopyWith(
          _$logoutSucessImpl value, $Res Function(_$logoutSucessImpl) then) =
      __$$logoutSucessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic response});
}

/// @nodoc
class __$$logoutSucessImplCopyWithImpl<$Res>
    extends _$LogoutStateCopyWithImpl<$Res, _$logoutSucessImpl>
    implements _$$logoutSucessImplCopyWith<$Res> {
  __$$logoutSucessImplCopyWithImpl(
      _$logoutSucessImpl _value, $Res Function(_$logoutSucessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$logoutSucessImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$logoutSucessImpl implements _logoutSucess {
  _$logoutSucessImpl({this.response});

  @override
  final dynamic response;

  @override
  String toString() {
    return 'LogoutState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$logoutSucessImpl &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$logoutSucessImplCopyWith<_$logoutSucessImpl> get copyWith =>
      __$$logoutSucessImplCopyWithImpl<_$logoutSucessImpl>(this, _$identity);

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
    required TResult Function(_logoutInitial value) initial,
    required TResult Function(_logoutLoading value) loading,
    required TResult Function(_logoutSucess value) success,
    required TResult Function(_LogoutFailed value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_logoutInitial value)? initial,
    TResult? Function(_logoutLoading value)? loading,
    TResult? Function(_logoutSucess value)? success,
    TResult? Function(_LogoutFailed value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_logoutInitial value)? initial,
    TResult Function(_logoutLoading value)? loading,
    TResult Function(_logoutSucess value)? success,
    TResult Function(_LogoutFailed value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _logoutSucess implements LogoutState {
  factory _logoutSucess({final dynamic response}) = _$logoutSucessImpl;

  dynamic get response;

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$logoutSucessImplCopyWith<_$logoutSucessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutFailedImplCopyWith<$Res> {
  factory _$$LogoutFailedImplCopyWith(
          _$LogoutFailedImpl value, $Res Function(_$LogoutFailedImpl) then) =
      __$$LogoutFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LogoutFailedImplCopyWithImpl<$Res>
    extends _$LogoutStateCopyWithImpl<$Res, _$LogoutFailedImpl>
    implements _$$LogoutFailedImplCopyWith<$Res> {
  __$$LogoutFailedImplCopyWithImpl(
      _$LogoutFailedImpl _value, $Res Function(_$LogoutFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LogoutFailedImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogoutFailedImpl implements _LogoutFailed {
  _$LogoutFailedImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LogoutState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutFailedImplCopyWith<_$LogoutFailedImpl> get copyWith =>
      __$$LogoutFailedImplCopyWithImpl<_$LogoutFailedImpl>(this, _$identity);

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
    required TResult Function(_logoutInitial value) initial,
    required TResult Function(_logoutLoading value) loading,
    required TResult Function(_logoutSucess value) success,
    required TResult Function(_LogoutFailed value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_logoutInitial value)? initial,
    TResult? Function(_logoutLoading value)? loading,
    TResult? Function(_logoutSucess value)? success,
    TResult? Function(_LogoutFailed value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_logoutInitial value)? initial,
    TResult Function(_logoutLoading value)? loading,
    TResult Function(_logoutSucess value)? success,
    TResult Function(_LogoutFailed value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _LogoutFailed implements LogoutState {
  factory _LogoutFailed({required final String error}) = _$LogoutFailedImpl;

  String get error;

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogoutFailedImplCopyWith<_$LogoutFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
