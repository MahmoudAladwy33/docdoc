import 'package:flutter/material.dart';
import 'package:medilink/core/routing/app_router.dart';
import 'package:medilink/doc_app.dart';

void main() {
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
