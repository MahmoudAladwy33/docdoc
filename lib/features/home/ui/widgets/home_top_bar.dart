import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medilink/core/theme/colors_manager.dart';
import 'package:medilink/core/theme/text_styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Aladwy!',
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              'How are you today?',
              style: TextStyles.font12GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManager.moreLighterGray,
          child: SvgPicture.asset('assets/svgs/notifications.svg'),
        ),
      ],
    );
  }
}
