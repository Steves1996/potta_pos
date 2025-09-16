import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potta_pos/generated/assets.dart';
import 'package:potta_pos/src/core/i18n/l10n.dart';
import 'package:potta_pos/src/core/routing/app_router.dart';
import 'package:potta_pos/src/features/cart/modals/new_contact_bottom_sheet.dart';
import 'package:potta_pos/src/features/cart/widgets/cart_item.dart';
import 'package:potta_pos/src/features/home/widgets/bottom_amount_selected.dart';
import 'package:potta_pos/src/shared/components/app_bar/custom_appbar.dart';
import 'package:potta_pos/src/shared/components/buttons/button.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';

@RoutePage<void>()
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: I18n.of(context).cart + '(3)',
        style: context.textTheme.headlineMedium?.copyWith(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        leadingButton: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, color: context.colorScheme.secondary),
        ),
        actions: [
          Row(
            children: [
              Icon(Icons.front_hand_outlined, color: Colors.green),
              SizedBox(width: 5.w),
              Text(
                'Hold',
                style: context.textTheme.bodyMedium?.copyWith(fontSize: 15.sp, color: Colors.green),
              ),
              SizedBox(width: 5.w),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
                child: Text(
                  '3',
                  style: context.textTheme.headlineMedium?.copyWith(fontSize: 13.sp, color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(width: 10.w),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const CartItem(name: 'Yellow sneakers', unitPrice: 2800, imageUrl: Assets.imagesFood1);
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Button.grey(
                    icon: Icons.person_outlined,
                    title: I18n.of(context).add_customer,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: context.colorScheme.surfaceTint,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        backgroundColor: Colors.white,
                        isScrollControlled: true, // Important for dynamic height
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return const ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                            child: NewContactBottomSheet(),
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: 10.h),
                  BottomAmountSelected(
                    onPressed: () {
                      context.router.push(PayModeRoute());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
