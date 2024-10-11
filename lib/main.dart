import 'package:flutter/material.dart';
import 'package:medilink/core/di/dependency_injection.dart';
import 'package:medilink/core/routing/app_router.dart';
import 'package:medilink/doc_app.dart';

void main() {
  setupGetIt();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
