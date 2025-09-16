import 'package:potta_pos/src/shared/locator.dart';
import 'package:potta_pos/src/shared/utils/secure_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'not_login_state.dart';
part 'not_login_cubit.freezed.dart';

class NotLoginCubit extends Cubit<NotLoginState> {
  final SecureStorage _secureStorage;

  NotLoginCubit({SecureStorage? secureStorage})
    : _secureStorage = secureStorage ?? locator<SecureStorage>(),
      super(NotLoginState.initial());

  void getUser() async {
    emit(NotLoginState.loading());
    try {
      //User? result = await _secureStorage.getUser();
      //emit(NotLoginState.success(response: result!));
    } catch (error) {
      emit(NotLoginState.failure(error: error.toString()));
    }
  }
}
