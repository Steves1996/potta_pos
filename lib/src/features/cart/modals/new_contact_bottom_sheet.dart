import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potta_pos/src/core/i18n/l10n.dart';
import 'package:potta_pos/src/features/cart/modals/address_detail_bottom_sheet.dart';
import 'package:potta_pos/src/features/cart/modals/contact_details_bottom_sheet.dart';
import 'package:potta_pos/src/features/cart/modals/tax_bottom_sheet.dart';
import 'package:potta_pos/src/shared/components/buttons/button.dart';
import 'package:potta_pos/src/shared/components/forms/input.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class NewContactBottomSheet extends StatefulWidget {
  const NewContactBottomSheet({super.key});

  @override
  State<NewContactBottomSheet> createState() => _NewContactBottomSheetState();
}

class _NewContactBottomSheetState extends State<NewContactBottomSheet> {
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _displayNameController;

  @override
  void initState() {
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _displayNameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _displayNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Use min to adapt to content size
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Divider(thickness: 0.004.sh),
            ),
            SizedBox(height: 8.h),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                I18n.of(context).new_contact,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.w800, color: Colors.black, fontSize: 16.sp),
              ),
            ),
            SizedBox(height: 10.h),
            Input(
              labelColor: Colors.black,
              controller: _firstNameController,
              labelText: I18n.of(context).first_name,
              hintText: I18n.of(context).first_name,
              cursorColor: context.colorScheme.primary,
              fillColor: context.colorScheme.primary.withOpacity(0.05),
              style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(color: context.colorScheme.shadow),
              textCapitalization: TextCapitalization.none,
              keyboardType: TextInputType.text,
              filled: true,
              maxLines: 1,
              minLines: 1,
              validator: Validators.required(I18n.of(context).empty_field),
              suffixIcon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colorScheme.onSurface.withOpacity(0.1),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_outlined, color: context.colorScheme.onSurface),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Input(
              labelColor: Colors.black,
              controller: _lastNameController,
              labelText: I18n.of(context).last_name,
              hintText: I18n.of(context).last_name,
              cursorColor: context.colorScheme.primary,
              fillColor: context.colorScheme.primary.withOpacity(0.05),
              style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(color: context.colorScheme.shadow),
              textCapitalization: TextCapitalization.none,
              keyboardType: TextInputType.text,
              filled: true,
              maxLines: 1,
              minLines: 1,
            ),
            SizedBox(height: 8.h),
            Input(
              labelColor: Colors.black,
              controller: _displayNameController,
              labelText: I18n.of(context).display_name,
              hintText: I18n.of(context).display_name,
              cursorColor: context.colorScheme.primary,
              fillColor: context.colorScheme.primary.withOpacity(0.05),
              style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(color: context.colorScheme.shadow),
              textCapitalization: TextCapitalization.none,
              keyboardType: TextInputType.text,
              filled: true,
              maxLines: 1,
              minLines: 1,
            ),
            ListTile(
              onTap: (){
                showModalBottomSheet<void>(
                  context: context,
                  backgroundColor: Colors.white,
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
                      child: ContactDetailsBottomSheet(),
                    );
                  },
                );
              },
              title: Text(
                I18n.of(context).contact_detail,
                style: context.textTheme.headlineMedium?.copyWith(color: Colors.black26, fontSize: 16.sp),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black26),
            ),
            Divider(thickness: 0.001.sh),
            ListTile(
              onTap: (){
                showModalBottomSheet<void>(
                  context: context,
                  backgroundColor: Colors.white,
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
                      child: AddressDetailBottomSheet(),
                    );
                  },
                );
              },
              title: Text(
                I18n.of(context).adress_detail,
                style: context.textTheme.headlineMedium?.copyWith(color: Colors.black26, fontSize: 16.sp),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black26),
            ),
            Divider(thickness: 0.001.sh),
            ListTile(
              onTap: (){
                showModalBottomSheet<void>(
                  context: context,
                  backgroundColor: Colors.white,
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
                      child: TaxBottomSheet(),
                    );
                  },
                );
              },
              title: Text(
                I18n.of(context).tax_info,
                style: context.textTheme.headlineMedium?.copyWith(color: Colors.black26, fontSize: 16.sp),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black26),
            ),
            Divider(thickness: 0.001.sh),
            ListTile(
              title: Text(
                I18n.of(context).note,
                style: context.textTheme.headlineMedium?.copyWith(color: Colors.black26, fontSize: 16.sp),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black26),
            ),SizedBox(height: 10.h
              ,),
            Button.primary(
              title: I18n.of(context).asve_contact,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white, fontSize: 16),
              onPressed: (){},
            ),
            SizedBox(height: 50.h),
            SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
          ],
        ),
      ),
    );
  }
}