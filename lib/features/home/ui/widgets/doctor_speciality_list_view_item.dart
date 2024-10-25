import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medilink/core/helpers/spacing.dart';
import 'package:medilink/core/theme/text_styles.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  const DoctorSpecialityListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.lightBlue,
          child: SvgPicture.asset(
            'assets/svgs/notifications.svg',
            height: 40.h,
            width: 40.w,
          ),
        ),
        verticalSpace(8),
        Text(
          'Cardiology',
          style: TextStyles.font12DarkBlueRegular,
        ),
      ],
    );
  }
}
