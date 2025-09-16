import 'package:potta_pos/generated/assets.dart';
import 'package:potta_pos/src/core/theme/dimens.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawerHeader extends StatelessWidget {
  final String fullName;
  final String email;
  const CustomDrawerHeader({super.key, required this.fullName, required this.email});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            Assets.logosLogo,
            height: 60,
            width: 60,
            fit: BoxFit.contain, // Ensures the image fills the circular area
          ),
        ),
        const SizedBox(width: Dimens.spacing),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              fullName,
              style: context.textTheme.titleLarge?.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w800,
                color: context.colorScheme.secondary,
              ),
            ),
            Text(
              email,
              style: context.textTheme.titleLarge?.copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: context.colorScheme.secondary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
