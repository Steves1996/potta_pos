part of 'not_login_cubit.dart';

@freezed
class NotLoginState with _$NotLoginState {
  factory NotLoginState.initial() = _NotLoginInitial;

  factory NotLoginState.loading() = _NotLoginLoading;

  factory NotLoginState.success({dynamic response}) = _NotLoginSucess;

  factory NotLoginState.failure({required String error}) = _NotLoginFailed;
}
