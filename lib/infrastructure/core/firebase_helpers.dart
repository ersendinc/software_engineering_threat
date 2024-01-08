import 'package:firebase_auth/firebase_auth.dart';
import 'package:threat_awareness/domain/auth/auth_user_model.dart';

extension FirebaseUserDomainX on User {
  AuthUserModel toDomain() {
    return AuthUserModel(
      id: uid,
      phoneNumber: phoneNumber!,
      photoUrl: photoURL,
      userName: displayName,
      isOnboardingCompleted:
          (photoURL == null && displayName == null) ? false : true,
    );
  }
}
