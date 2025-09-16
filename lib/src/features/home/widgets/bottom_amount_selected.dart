import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potta_pos/src/core/routing/app_router.dart';
import 'package:potta_pos/src/shared/components/buttons/button.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';

class BottomAmountSelected extends StatelessWidget {
  final VoidCallback onPressed;
  const BottomAmountSelected({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(shape: BoxShape.circle, color: context.colorScheme.onSecondary),
            child: InkWell(
              onTap: (){},
              child: Badge.count(count: 3, child:  Icon(Icons.back_hand_outlined, color: context.colorScheme.primary)),
            ),
          ),
          Column(
            children: [
              Text('Items', style: context.textTheme.headlineMedium?.copyWith(
                fontSize: 14.sp,
                color: context.colorScheme.secondary,
                fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 5.h,),
              Text(
                '12',
                style: context.textTheme.headlineMedium?.copyWith(
                  fontSize: 18.sp,
                  color: context.colorScheme.secondary,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text('checkout', style: context.textTheme.headlineMedium?.copyWith(
                  fontSize: 14.sp,
                  color: context.colorScheme.secondary,
                  fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 5.h,),
              Button.primary(
                title: 'XAF 2000',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white, fontSize: 16),
                onPressed: onPressed
              ),
            ],
          )
        ],
      ),
    );
  }
}
