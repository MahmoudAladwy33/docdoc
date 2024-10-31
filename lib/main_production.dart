import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medilink/core/di/dependency_injection.dart';
import 'package:medilink/core/helpers/extensions.dart';
import 'package:medilink/core/routing/app_router.dart';
import 'package:medilink/doc_app.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/shared_pref_helper.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
