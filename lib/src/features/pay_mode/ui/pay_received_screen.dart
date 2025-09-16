import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potta_pos/src/core/i18n/l10n.dart';
import 'package:potta_pos/src/core/routing/app_router.dart';
import 'package:potta_pos/src/shared/components/buttons/button.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';

@RoutePage<void>()
class PayReceivedScreen extends StatefulWidget {
  const PayReceivedScreen({super.key});

  @override
  State<PayReceivedScreen> createState() => _PayReceivedScreenState();
}

class _PayReceivedScreenState extends State<PayReceivedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.close, color: context.colorScheme.secondary),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle, color: context.colorScheme.primary, size: 40.h),
                    SizedBox(height: 10.h),
                    Text(
                      I18n.of(context).pay_receive,
                      style: context.textTheme.headlineMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'XAF 25 000',
                        textAlign: TextAlign.center,
                        style: context.textTheme.headlineMedium?.copyWith(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w600,
                          color: context.colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.print, color: Colors.black),
                          SizedBox(width: 5.w),
                          Text(
                            I18n.of(context).print_receipt,
                            style: context.textTheme.headlineMedium?.copyWith(color: Colors.black, fontSize: 14.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Button.primary(
                    title: I18n.of(context).return_home,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white, fontSize: 16),
                    onPressed: () {
                      context.router.push(HomeRoute());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
