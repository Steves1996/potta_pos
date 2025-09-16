import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';

class TableWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String tableSelected;
  const TableWidget({super.key, required this.onTap, required this.tableSelected});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 10.r,right: 10.r,top: 5.r,bottom: 5.r),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceTint,
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                padding: EdgeInsets.all( 2.r),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(Icons.table_bar_rounded, color: context.colorScheme.surfaceTint, size: 32.sp,)
            ),
            SizedBox(width: 5.w),
            Text(
            tableSelected,
              style: context.textTheme.bodyMedium?.copyWith(color: Colors.white, fontSize: 16.sp),
            ),
            SizedBox(width: 5.w),
          ],
        ),
      ),
    );
  }
}
