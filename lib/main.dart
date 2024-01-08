import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:threat_awareness/firebase_options.dart';
import 'package:threat_awareness/injection.dart';
import 'package:threat_awareness/presentation/core/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  runApp(const AppWidget());
}
