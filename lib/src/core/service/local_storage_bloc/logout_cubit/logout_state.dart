part of 'logout_cubit.dart';

@freezed
class LogoutState with _$LogoutState {
  factory LogoutState.initial() = _logoutInitial;

  factory LogoutState.loading() = _logoutLoading;

  factory LogoutState.success({dynamic response}) = _logoutSucess;

  factory LogoutState.failure({required String error}) = _LogoutFailed;
}
