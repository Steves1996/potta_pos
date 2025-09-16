import 'package:potta_pos/src/core/routing/app_router.dart';
import 'package:potta_pos/src/core/service/dio_service.dart';
import 'package:potta_pos/src/core/theme/app_theme.dart';
import 'package:potta_pos/src/core/theme/theme_logic/model/theme_state.dart';
import 'package:potta_pos/src/core/theme/theme_logic/repository/theme_repository.dart';
import 'package:potta_pos/src/core/theme/theme_logic/theme_bloc/theme_cubit.dart';
import 'package:potta_pos/src/shared/locator.dart';
import 'package:potta_pos/src/shared/transalation/logic/bloc/language_cubit.dart';
import 'package:potta_pos/src/shared/transalation/logic/bloc/language_state.dart';
import 'package:potta_pos/src/shared/transalation/logic/repository/language_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'i18n/l10n.dart';

class PottaPos extends StatelessWidget {
  final AppRouter? _providedRouter;

  const PottaPos({super.key, AppRouter? appRouter}) : _providedRouter = appRouter;

  @override
  Widget build(BuildContext context) {
    final appRouter = _providedRouter ?? locator<AppRouter>();
    DioService.setAppRouter(appRouter);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LanguageCubit(LanguageRepository())..initializeLanguage()),
        BlocProvider(create: (context) => ThemeCubit(themeRepository: ThemeRepository())..initializeTheme()),
      ],
      child: Builder(
        builder: (context) {
          return BlocBuilder<LanguageCubit, LanguageState>(
            builder: (context, languageState) {
              return BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, themeState) {
                  return ScreenUtilInit(
                    builder: (context, child) => MaterialApp.router(
                      title: 'CRYPTO RATES',
                      routerConfig: appRouter.config(navigatorObservers: () => [AutoRouteObserver()]),
                      themeMode: themeState.themeMode,
                      theme: AppTheme.lightTheme,
                      //darkTheme: AppTheme.darkTheme,
                      debugShowCheckedModeBanner: false,
                      locale: languageState is LanguageLoaded ? languageState.currentLocale : const Locale('fr'),
                      localizationsDelegates: const [
                        I18n.delegate,
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                      ],
                      supportedLocales: I18n.delegate.supportedLocales,
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
