part of 'auth_setup_cubit.dart';

@freezed
class AuthSetupState with _$AuthSetupState {
  const factory AuthSetupState({
    required AuthUserModel userModel,
    required bool isUserLoggedIn,
    required bool isUserCheckedFromAuthService,
    required bool isInProgress,
  }) = _AuthSetupState;

  factory AuthSetupState.empty() => AuthSetupState(
        userModel: AuthUserModel.empty(),
        isUserLoggedIn: false,
        isUserCheckedFromAuthService: false,
        isInProgress: false,
      );
}
