import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:potta_pos/src/core/i18n/l10n.dart';
import 'package:potta_pos/src/features/order/widget/close_order_item.dart';
import 'package:potta_pos/src/features/order/widget/open_order_item.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';

@RoutePage<void>()
class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    '${I18n.of(context).orders}(3)',
                    style: context.textTheme.headlineMedium?.copyWith(
                      fontSize: 18.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle, color: context.colorScheme.surfaceTint),
                  child: IconButton(
                    color: context.colorScheme.surfaceTint,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(Icons.add, color: Colors.white),
                  ),
                ),
                SizedBox(width: 5.w),
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle, color: context.colorScheme.surfaceTint),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(IconsaxPlusLinear.scan, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Expanded(
                  child: Text(
                    I18n.of(context).open_order,
                    style: context.textTheme.headlineMedium?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                Text(
                  I18n.of(context).total,
                  style: context.textTheme.headlineMedium?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(color: Colors.grey, height: 1, thickness: 0.2);
                },
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const OpenOrderItem();
                },
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Expanded(
                  child: Text(
                    I18n.of(context).close_order,
                    style: context.textTheme.headlineMedium?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(color: Colors.grey, height: 1, thickness: 0.2);
                },
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const CloseOrderItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
