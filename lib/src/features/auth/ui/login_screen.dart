import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:potta_pos/generated/assets.dart';
import 'package:potta_pos/src/core/i18n/l10n.dart';
import 'package:potta_pos/src/core/routing/app_router.dart';
import 'package:potta_pos/src/core/theme/dimens.dart';
import 'package:potta_pos/src/shared/components/buttons/button.dart';
import 'package:potta_pos/src/shared/components/forms/input.dart';
import 'package:potta_pos/src/shared/extensions/context_extensions.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

@RoutePage<void>()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailOrPhoneController;
  late TextEditingController _passwordController;

  final formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = true;

  @override
  void initState() {
    _emailOrPhoneController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailOrPhoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image.asset(Assets.logosLogo, height: 60.h, width: 60.w, fit: BoxFit.fill),
                SizedBox(height: 10.h),
                Input(
                  labelColor: Colors.black,
                  controller: _emailOrPhoneController,
                  labelText: I18n.of(context).login_email_or_phone,
                  hintText: I18n.of(context).login_email_or_phone,
                  cursorColor: context.colorScheme.primary,
                  fillColor: context.colorScheme.primary.withOpacity(0.05),
                  style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(color: context.colorScheme.shadow),
                  textCapitalization: TextCapitalization.none,
                  keyboardType: TextInputType.text,
                  filled: true,
                  prefixIcon: Icon(Icons.email_outlined,color:context.colorScheme.onSurface ),
                  maxLines: 1,
                  minLines: 1,
                  validator: Validators.required(I18n.of(context).empty_field),
                ),
                SizedBox(height: 8.h),
                Input(
                  controller: _passwordController,
                  isPassword: _isPasswordVisible,
                  labelColor: Colors.black,
                  prefixIcon:  Icon(Icons.lock_outlined, color:context.colorScheme.onSurface ,),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                    icon: Icon(
                      _isPasswordVisible ? IconsaxPlusBold.eye_slash : IconsaxPlusBold.eye,
                      color: context.colorScheme.primary,
                      size: Dimens.iconSizeM,
                    ),
                  ),
                  validator: Validators.required(I18n.of(context).empty_field),
                  labelText: I18n.of(context).login_password,
                  hintText: I18n.of(context).login_password,
                  cursorColor: context.colorScheme.primary,
                  fillColor: context.colorScheme.primary.withOpacity(0.05),
                  style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(color: context.colorScheme.shadow),
                  filled: true,
                  textCapitalization: TextCapitalization.none,
                  maxLines: 1,
                  minLines: 1,
                ),
                SizedBox(height: 20.h),
                Button.primary(
                  title: I18n.of(context).sign_in,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white, fontSize: 16),
                  onPressed: ()=>context.router.push(HomeRoute()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
