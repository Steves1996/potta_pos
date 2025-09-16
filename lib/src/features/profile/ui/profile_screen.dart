import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potta_pos/src/core/i18n/l10n.dart';
import 'package:potta_pos/src/features/order/widget/close_order_item.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';

@RoutePage<void>()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedPeriodIndex = 0;

  // Liste des périodes disponibles
  final List<String> periods = [
    'Yesterday',
    'Today',
    '1 Week',
    '1 Month',
    'This year'
  ];

  // Méthode pour obtenir les ventes selon la période sélectionnée
  String getSalesAmount() {
    // Ici vous pouvez implémenter la logique pour récupérer
    // les ventes selon la période sélectionnée
    switch (selectedPeriodIndex) {
      case 0: // Yesterday
        return 'XAF 180,000';
      case 1: // Today
        return 'XAF 205,000';
      case 2: // 1 Week
        return 'XAF 1,250,000';
      case 3: // 1 Month
        return 'XAF 4,800,000';
      case 4: // This year
        return 'XAF 45,000,000';
      default:
        return 'XAF 205,000';
    }
  }

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
                    I18n.of(context).total_sales,
                    style: context.textTheme.headlineMedium?.copyWith(
                      fontSize: 18.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.colorScheme.surfaceTint
                  ),
                  child: IconButton(
                    color: context.colorScheme.surfaceTint,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(Icons.person_outlined, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                getSalesAmount(),
                style: context.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10.h),

            // Liste horizontale interactive des périodes
            SizedBox(
              height: 35.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: periods.length,
                separatorBuilder: (context, index) => SizedBox(width: 8.w),
                itemBuilder: (context, index) {
                  final isSelected = selectedPeriodIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedPeriodIndex = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isSelected
                            ? context.colorScheme.primary
                            : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15.r),
                        boxShadow: isSelected ? [
                          BoxShadow(
                            color: context.colorScheme.primary.withOpacity(0.3),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          )
                        ] : null,
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 8.h
                      ),
                      child: Text(
                        periods[index],
                        textAlign: TextAlign.center,
                        style: context.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 10.h),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: Container(
                key: ValueKey(selectedPeriodIndex),
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.h,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
                child: Text(
                  getSalesAmount(),
                  textAlign: TextAlign.center,
                  style: context.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 32.sp,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                I18n.of(context).sales_history,
                style: context.textTheme.headlineMedium?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16.sp,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 0.2
                  );
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