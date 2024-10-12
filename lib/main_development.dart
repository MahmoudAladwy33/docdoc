import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medilink/core/di/dependency_injection.dart';
import 'package:medilink/core/routing/app_router.dart';
import 'package:medilink/doc_app.dart';

void main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
