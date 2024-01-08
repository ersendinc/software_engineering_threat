import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:threat_awareness/domain/auth/auth_user_model.dart';
import 'package:threat_awareness/domain/auth/i_auth_service.dart';
import 'package:threat_awareness/injection.dart';

part 'auth_setup_state.dart';
part 'auth_setup_cubit.freezed.dart';

@LazySingleton()
class AuthSetupCubit extends Cubit<AuthSetupState> {
  late final IAuthService _authService;
  late StreamSubscription<AuthUserModel>? _authUserSubscription;
  AuthSetupCubit() : super(AuthSetupState.empty()) {
    _authService = getIt<IAuthService>();
    _authUserSubscription =
        _authService.authStateChanges.listen(_listenAuthStateChangesStream);
  }

  @override
  Future<void> close() async {
    await _authUserSubscription?.cancel();
    super.close();
  }

  Future<void> _listenAuthStateChangesStream(AuthUserModel authUser) async {
    emit(
      state.copyWith(
        isInProgress: true,
        userModel: authUser,
        isUserCheckedFromAuthService: true,
      ),
    );

    if (state.isUserLoggedIn) {
      // await _chatService.connectTheCurrentUser();

      emit(state.copyWith(userModel: authUser, isInProgress: false));
    }
  }

  void changeUserName({required String userName}) {
    emit(state.copyWith(
        userModel: state.userModel.copyWith(userName: userName)));
  }

 

  @override
  AuthSetupState? fromJson(Map<String, dynamic> json) {
    return AuthSetupState.empty().copyWith(userModel: json["authUser"]);
  }

  @override
  Map<String, dynamic>? toJson(AuthSetupState state) {
    return {"authUser": state.userModel.toJson()};
  }

  Future<void> signOut() async {
    _authService.signOut();
  }
}
