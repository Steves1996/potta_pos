import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';

class CloseOrderItem extends StatelessWidget {
  const CloseOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.h, bottom: 8.h),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Table 008',
                  style: context.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5.h,),
                Row(
                  children: [
                    Text(
                      'No. #00234',
                      style: context.textTheme.bodyMedium?.copyWith(fontSize: 11.sp, color: Colors.black),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      '13/04/2025',
                      style: context.textTheme.bodyMedium?.copyWith(fontSize: 11.sp, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'XAF 5500',
                style: context.textTheme.bodyMedium?.copyWith(fontSize: 16.sp, color: context.colorScheme.surfaceTint, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 5.h,),
              Container(
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceTint,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
                child: Text(
                  'Open',
                  style: context.textTheme.bodyMedium?.copyWith(fontSize: 11.sp, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
