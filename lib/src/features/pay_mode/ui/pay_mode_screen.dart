import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potta_pos/src/core/i18n/l10n.dart';
import 'package:potta_pos/src/core/routing/app_router.dart';
import 'package:potta_pos/src/features/pay_mode/model/pay_mode.model.dart';
import 'package:potta_pos/src/shared/components/app_bar/custom_appbar.dart';
import 'package:potta_pos/src/shared/components/buttons/button.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';

@RoutePage<void>()
class PayModeScreen extends StatefulWidget {
  const PayModeScreen({super.key});

  @override
  State<PayModeScreen> createState() => _PayModeScreenState();
}

class _PayModeScreenState extends State<PayModeScreen> {
  int? _selectedPaymentIndex;

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: payModeList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: (){
                        setState(() {
                          _selectedPaymentIndex = index;
                        });
                      },
                      title: Text(
                        payModeList[index].title,
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                      ),
                      leading: Image.asset(payModeList[index].assetName, height: 24.h, width: 24.w),
                      trailing: Radio<int>(
                        value: index,
                        groupValue: _selectedPaymentIndex,
                        onChanged: (int? value) {
                          setState(() {
                            _selectedPaymentIndex = value;
                          });
                        },
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(color: Colors.grey, height: 1, thickness: 1);
                  },
                ),
              ),
              Visibility(
                visible: _selectedPaymentIndex !=null ,
                child: Button.primary(
                  title: I18n.of(context).confirm_pay,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white, fontSize: 16),
                  onPressed:  () {
                    context.router.push(PhonePayRoute());
                  } ,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}