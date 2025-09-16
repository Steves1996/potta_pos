import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:potta_pos/src/core/theme/dimens.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.icons,
    required this.title,
    required this.activePageIndex,
    this.onItemTap,
  });

  final ValueChanged<int>? onItemTap;
  final List<String> icons;
  final List<String> title;
  final int activePageIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: context.colorScheme.shadow.withOpacity(0.05), blurRadius: 5, spreadRadius: 3)],
      ),
      child: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: icons.mapIndexed((index, icon) {
            return _BottomNavBarItem(
              icon: icon,
              isActive: index == activePageIndex,
              onTap: () => onItemTap?.call(index),
              title: title[index],
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _BottomNavBarItem extends StatelessWidget {
  const _BottomNavBarItem({required this.icon, required this.title, required this.isActive, required this.onTap});

  final String icon;
  final String title;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final bnbTheme = BottomNavigationBarTheme.of(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(Dimens.fullRadius),
        child: Padding(
          padding: const EdgeInsets.all(Dimens.bottomNavBarItemPadding),
          child: Column(
            children: [
              Container(
                child: SvgPicture.asset(
                  icon,
                  height: Dimens.bottomNavBarIconSize,
                  width: Dimens.bottomNavBarIconSize,
                  color: isActive ? context.colorScheme.primary : context.colorScheme.secondary,
                ),
              ),
              SizedBox(height: 5.h,),
              Text(
                title,
                style: context.textTheme.headlineMedium?.copyWith(fontSize: 11.sp, color:isActive ? context.colorScheme.primary : Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
