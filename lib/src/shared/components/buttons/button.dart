import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potta_pos/src/core/theme/dimens.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

enum _ButtonType {
  primary,
  secondary,
  ternary,
  outline,
  grey,
  white,
}

class Button extends StatelessWidget {
  const Button.primary({
    super.key,
    required this.title,
    this.style,
    this.icon,
    this.iconSvgOrPng,
    this.padding,
    this.onPressed,
    this.iconColor,
  }) : _buttonType = _ButtonType.primary, borderColor = null;

  const Button.ternary({
    super.key,
    required this.title,
    this.style,
    this.icon,
    this.iconSvgOrPng,
    this.padding,
    this.onPressed,
    this.iconColor,
  }) : _buttonType = _ButtonType.ternary, borderColor = null;

  const Button.secondary({
    super.key,
    required this.title,
    this.style,
    this.icon,
    this.iconSvgOrPng,
    this.padding,
    this.onPressed,
    this.iconColor,
  }) : _buttonType = _ButtonType.secondary, borderColor = null;

  const Button.outline({
    super.key,
    required this.title,
    this.style,
    this.icon,
    this.iconSvgOrPng,
    this.padding,
    this.onPressed,
    this.iconColor,
    this.borderColor,
  }) : _buttonType = _ButtonType.outline;

  const Button.grey({
    super.key,
    required this.title,
    this.style,
    this.icon,
    this.iconSvgOrPng,
    this.padding,
    this.onPressed,
    this.iconColor,
  }) : _buttonType = _ButtonType.grey, borderColor = null;

  const Button.white({
    super.key,
    required this.title,
    this.style,
    this.icon,
    this.iconSvgOrPng,
    this.padding,
    this.onPressed,
    this.iconColor,
  }) : _buttonType = _ButtonType.white, borderColor = null;

  final String title;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Widget? iconSvgOrPng;
  final EdgeInsetsGeometry? padding;
  final _ButtonType _buttonType;
  final TextStyle? style;
  final Color? iconColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    late final Color backgroundColor;
    late final Color effectiveIconColor;
    late final TextStyle? effectiveStyle;

    switch (_buttonType) {
      case _ButtonType.primary:
        backgroundColor = Theme.of(context).primaryColor;
        effectiveStyle = style ??
            Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            );
        effectiveIconColor = iconColor ?? Theme.of(context).colorScheme.surfaceContainer;
        break;
      case _ButtonType.ternary:
        backgroundColor = Theme.of(context).colorScheme.tertiary;
        effectiveStyle = style ??
            Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            );
        effectiveIconColor = iconColor ?? Theme.of(context).primaryColor;
        break;
      case _ButtonType.outline:
        backgroundColor = Colors.transparent;
        effectiveStyle = style ??
            Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.primary,
              fontWeight: FontWeight.bold,
            );
        effectiveIconColor = iconColor ?? const Color(0xFF351B59).withOpacity(0.5);
        break;
      case _ButtonType.grey:
        backgroundColor = Theme.of(context).colorScheme.onSurface;
        effectiveStyle = style ?? Theme.of(context).textTheme.titleLarge;
        effectiveIconColor = iconColor ?? Theme.of(context).colorScheme.surfaceTint;
        break;
      case _ButtonType.secondary:
        backgroundColor = Theme.of(context).colorScheme.secondary;
        effectiveStyle = style ??
            Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.surfaceContainer,
            );
        effectiveIconColor = iconColor ?? Theme.of(context).primaryColor;
        break;
      case _ButtonType.white:
        backgroundColor = Theme.of(context).colorScheme.onPrimary;
        effectiveStyle = style ??
            Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).primaryColor,
            );
        effectiveIconColor = iconColor ?? Theme.of(context).primaryColor;
        break;
    }

    if (_buttonType == _ButtonType.outline) {
      return SizedBox(
        height: kMinInteractiveDimension,
        child: OutlinedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            padding: WidgetStateProperty.all(const EdgeInsets.all(Dimens.halfSpacing)),
            backgroundColor: WidgetStateProperty.all(backgroundColor),
            side: WidgetStateProperty.all(
              BorderSide(
                color: borderColor ?? context.colorScheme.primary,
                width: 1.5,
              ),
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
          ),
          child: Padding(
            padding: padding ?? EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: padding == null ? MainAxisSize.max : MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Icon(
                    icon,
                    color: effectiveIconColor,
                  ),
                  if (title.isNotEmpty) const SizedBox(width: Dimens.circleSpacing),
                ],
                if (iconSvgOrPng != null) ...[
                  iconSvgOrPng!,
                  if (title.isNotEmpty) const SizedBox(width: Dimens.circleSpacing),
                ],
                Text(
                  title,
                  style: effectiveStyle,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return SizedBox(
      height: kMinInteractiveDimension,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: WidgetStateProperty.all(const EdgeInsets.all(Dimens.halfSpacing)),
          backgroundColor: WidgetStateProperty.all(backgroundColor),
          elevation: const WidgetStatePropertyAll(0),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.r),
            ),
          ),
        ),
        child: Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: padding == null ? MainAxisSize.max : MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  color: effectiveIconColor,
                ),
                if (title.isNotEmpty) const SizedBox(width: Dimens.spacing),
              ],
              if (iconSvgOrPng != null) ...[
                iconSvgOrPng!,
                if (title.isNotEmpty) const SizedBox(width: Dimens.spacing),
              ],
              Text(
                title,
                style: effectiveStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}