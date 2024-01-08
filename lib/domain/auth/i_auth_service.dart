

import 'package:dartz/dartz.dart';
import 'package:threat_awareness/domain/auth/auth_failure.dart';
import 'package:threat_awareness/domain/auth/auth_user_model.dart';

abstract class IAuthService {
  Stream<AuthUserModel> get authStateChanges;
  Future<Option<AuthUserModel>> getSignedInUser();
  Future<void> signOut();
  Stream<Either<AuthFailure, Tuple2<String, int?>>> signInWithPhoneNumber({
    required String phoneNumber,
    required Duration timeout,
    required int? resendToken,
  });
  Future<Either<AuthFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  });
  Future<void> updateDisplayName({required String displayName});

  Future<void> updatePhotoURL({required String photoURL});
}
