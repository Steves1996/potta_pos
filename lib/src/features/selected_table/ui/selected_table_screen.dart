import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potta_pos/src/core/i18n/l10n.dart';
import 'package:potta_pos/src/features/selected_table/widgets/selected_table_item.dart';
import 'package:potta_pos/src/shared/components/app_bar/custom_appbar.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';

@RoutePage<void>()
class SelectedTableScreen extends StatefulWidget {
  const SelectedTableScreen({super.key});

  @override
  State<SelectedTableScreen> createState() => _SelectedTableScreenState();
}

class _SelectedTableScreenState extends State<SelectedTableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: I18n.of(context).selected_table,
        style: context.textTheme.headlineMedium?.copyWith(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        leadingButton: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, color: context.colorScheme.secondary),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return SelectedTableItem(
                      onTap: () {
                        Navigator.of(context).pop(2);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
