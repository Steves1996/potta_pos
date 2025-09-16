import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potta_pos/src/core/i18n/l10n.dart';
import 'package:potta_pos/src/core/routing/app_router.dart';
import 'package:potta_pos/src/shared/components/app_bar/custom_appbar.dart';
import 'package:potta_pos/src/shared/components/buttons/button.dart';
import 'package:potta_pos/src/shared/components/forms/input.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

@RoutePage<void>()
class PhonePayScreen extends StatefulWidget {
  const PhonePayScreen({super.key});

  @override
  State<PhonePayScreen> createState() => _PhonePayScreenState();
}

class _PhonePayScreenState extends State<PhonePayScreen> {
  late TextEditingController _phoneController;

  @override
  void initState() {
    _phoneController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: I18n.of(context).checkout,
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            child: Column(
              children: [
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
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Input(
                        labelColor: Colors.black,
                        controller: _phoneController,
                        labelText: I18n.of(context).phone,
                        hintText: '60000000',
                        cursorColor: context.colorScheme.primary,
                        fillColor: context.colorScheme.primary.withOpacity(0.05),
                        style: Theme.of(
                          context,
                        ).primaryTextTheme.bodyLarge?.copyWith(color: context.colorScheme.shadow),
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.text,
                        filled: true,
                        prefixIcon: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('+237', textAlign: TextAlign.center, style: context.textTheme.headlineMedium),
                          ],
                        ),
                        maxLines: 1,
                        minLines: 1,
                        validator: Validators.required(I18n.of(context).empty_field),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Text(I18n.of(context).name, style: context.textTheme.headlineMedium?.copyWith(color: Colors.black, fontSize: 14.sp,),),
                          SizedBox(width: 8.h,),
                          Text('Steves Kevin',style: context.textTheme.headlineMedium?.copyWith(color: Colors.black, fontSize: 14.sp,fontWeight: FontWeight.w600),)
                        ],
                      )
                    ],
                  ),
                ),
                Button.primary(
                  title: I18n.of(context).confirm_pay,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white, fontSize: 16),
                  onPressed: () {
                    context.router.push(PayReceivedRoute());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
