import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:potta_pos/generated/assets.dart';
import 'package:potta_pos/src/core/i18n/l10n.dart';
import 'package:potta_pos/src/core/routing/app_router.dart';
import 'package:potta_pos/src/features/home/widgets/bottom_amount_selected.dart';
import 'package:potta_pos/src/features/home/widgets/category_filter.dart';
import 'package:potta_pos/src/features/home/widgets/menu_item.dart';
import 'package:potta_pos/src/features/home/widgets/table_widget.dart';
import 'package:potta_pos/src/shared/components/forms/input.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';

@RoutePage<void>()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _searchController;
  int table = 5;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Input(
                      labelColor: Colors.black,
                      controller: _searchController,
                      hintText: I18n.of(context).search_product,
                      cursorColor: context.colorScheme.primary,
                      fillColor: context.colorScheme.primary.withOpacity(0.05),
                      style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(color: context.colorScheme.shadow),
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.text,
                      prefixIcon: Icon(Icons.search, color: context.colorScheme.onSurface),
                      filled: true,
                      maxLines: 1,
                      minLines: 1,
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
                    child: CategoryFilter(
                      onSelectionChanged: (selectedCategories) {
                        final selected = selectedCategories
                            .where((category) => category.isSelected)
                            .map((category) => category.name)
                            .toList();
                        print('Catégories sélectionnées: $selected');
                      },
                    ),
                  ),
                  TableWidget(
                    onTap: () {
                      context.router.push(SelectedTableRoute()).then((onValue) {
                        setState(() {
                          table = int.parse(onValue.toString());
                        });
                      });
                    },
                    tableSelected: '$table',
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.76,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return MenuItem(
                      imagePath: Assets.imagesFood1,
                      title: 'Yellow sneakers',
                      price: '2800F',
                      onSelectionChanged: (isSelected, quantity) {
                        print('Item $index - Sélectionné: $isSelected, Quantité: $quantity');
                        // Vous pouvez maintenant accéder à l'état de sélection et à la quantité
                      },
                    );
                  },
                ),
              ),
              BottomAmountSelected(
                onPressed: () {
                  context.router.push(CartRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
