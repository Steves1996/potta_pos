import 'package:potta_pos/src/shared/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final IconButton? leadingButton;
  final IconData? leadingIcon;
  final VoidCallback? onLeadingTap;
  final List<Widget>? actions;
  final TextStyle? style;
  final bool? automaticallyImplyLeading;
  final bool? centerTitle;

  const CustomAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.leadingButton,
    this.onLeadingTap,
    this.actions,
    this.style,
    this.automaticallyImplyLeading = true,
    this.centerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      backgroundColor: Colors.white,
      centerTitle: centerTitle ?? false,
      elevation: 0,
      title: Text(
        title ?? '',
        style:
            style ??
            context.textTheme.titleLarge?.copyWith(
              fontSize: 25.sp,
              fontWeight: FontWeight.w900,
              color: context.colorScheme.primary,
            ),
      ),
      leading: leadingButton,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
