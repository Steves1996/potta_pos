import 'package:potta_pos/src/core/theme/dimens.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerItem extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String assetName;
  const DrawerItem({super.key, required this.onTap, required this.title, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
      color: context.colorScheme.surfaceContainer,
      borderRadius: BorderRadius.circular(10),
    ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            SvgPicture.asset(assetName,height: 26,width: 26,color: context.colorScheme.secondary,),
            const SizedBox(width: Dimens.spacing),
            Expanded(
              child: Text(
                title,
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.colorScheme.secondary,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Icon(Icons.keyboard_arrow_right_outlined, color: context.colorScheme.secondary),
          ],
        ),
      ),
    );
  }
}
