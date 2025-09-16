import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potta_pos/src/core/i18n/l10n.dart';
import 'package:potta_pos/src/shared/components/forms/input.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class TaxBottomSheet extends StatefulWidget {
  const TaxBottomSheet({super.key});

  @override
  State<TaxBottomSheet> createState() => _TaxBottomSheetState();
}

class _TaxBottomSheetState extends State<TaxBottomSheet> {
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Divider(thickness: 0.004.sh),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Text(
                    I18n.of(context).tax_information,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      fontSize: 16.sp,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      I18n.of(context).save,
                      style: context.textTheme.bodyMedium?.copyWith(color: context.colorScheme.primary, fontSize: 16.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Input(
                labelColor: Colors.black,
                controller: _phoneController,
                labelText: I18n.of(context).tax,
                hintText: I18n.of(context).tax_detail,
                cursorColor: context.colorScheme.primary,
                fillColor: context.colorScheme.primary.withOpacity(0.05),
                style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(color: context.colorScheme.shadow),
                textCapitalization: TextCapitalization.none,
                keyboardType: TextInputType.text,
                filled: true,
                maxLines: 1,
                minLines: 1,
                validator: Validators.required(I18n.of(context).empty_field),

              ),
              SizedBox(height: 10.h),

              SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
            ],
          ),
        ),
      ),
    );
  }
}
