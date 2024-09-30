import 'package:flutter/material.dart';
import 'package:medilink/core/helpers/extensions.dart';
import 'package:medilink/core/routing/routes.dart';
import 'package:medilink/core/theme/colors.dart';
import 'package:medilink/core/theme/text_styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: const WidgetStatePropertyAll(
          Size(double.infinity, 52),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteMedium,
      ),
    );
  }
}
