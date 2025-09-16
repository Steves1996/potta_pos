import 'package:potta_pos/src/shared/locator.dart';
import 'package:potta_pos/src/shared/utils/secure_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_state.dart';
part 'logout_cubit.freezed.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final SecureStorage _secureStorage;

  LogoutCubit({SecureStorage? secureStorage})
    : _secureStorage = secureStorage ?? locator<SecureStorage>(),
      super(LogoutState.initial());

  void logOut() async {
    emit(LogoutState.loading());
    try {
      await _secureStorage.clearAll();
      emit(LogoutState.success(response: true));
    } catch (error) {
      emit(LogoutState.failure(error: error.toString()));
    }
  }
}
