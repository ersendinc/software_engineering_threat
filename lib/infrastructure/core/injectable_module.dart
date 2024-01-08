import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:threat_awareness/presentation/routes/router.gr.dart';

@module
abstract class InjectableModule {
  @singleton
  AppRouter get appRouter => AppRouter();
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @singleton
  Connectivity get connectivity => Connectivity();
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
  @lazySingleton
  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;
}
