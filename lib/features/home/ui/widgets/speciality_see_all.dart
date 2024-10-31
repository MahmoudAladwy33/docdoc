import 'package:flutter/widgets.dart';
import 'package:medilink/core/theme/text_styles.dart';

class SpecialitySeeAll extends StatelessWidget {
  const SpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctor Speciality',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        Text(
          'See All',
          style: TextStyles.font12BlueRegular,
        ),
      ],
    );
  }
}
