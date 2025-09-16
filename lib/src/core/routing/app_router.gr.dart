// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const CartScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MainNavigationRouter.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: WrappedRoute(child: const MainNavigationWrapper()),
      );
    },
    OrderRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const OrderScreen(),
      );
    },
    PayModeRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const PayModeScreen(),
      );
    },
    PayReceivedRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const PayReceivedScreen(),
      );
    },
    PhonePayRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const PhonePayScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    SelectedTableRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const SelectedTableScreen(),
      );
    },
  };
}

/// generated route for
/// [CartScreen]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainNavigationWrapper]
class MainNavigationRouter extends PageRouteInfo<void> {
  const MainNavigationRouter({List<PageRouteInfo>? children})
      : super(
          MainNavigationRouter.name,
          initialChildren: children,
        );

  static const String name = 'MainNavigationRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderScreen]
class OrderRoute extends PageRouteInfo<void> {
  const OrderRoute({List<PageRouteInfo>? children})
      : super(
          OrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PayModeScreen]
class PayModeRoute extends PageRouteInfo<void> {
  const PayModeRoute({List<PageRouteInfo>? children})
      : super(
          PayModeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PayModeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PayReceivedScreen]
class PayReceivedRoute extends PageRouteInfo<void> {
  const PayReceivedRoute({List<PageRouteInfo>? children})
      : super(
          PayReceivedRoute.name,
          initialChildren: children,
        );

  static const String name = 'PayReceivedRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PhonePayScreen]
class PhonePayRoute extends PageRouteInfo<void> {
  const PhonePayRoute({List<PageRouteInfo>? children})
      : super(
          PhonePayRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhonePayRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SelectedTableScreen]
class SelectedTableRoute extends PageRouteInfo<void> {
  const SelectedTableRoute({List<PageRouteInfo>? children})
      : super(
          SelectedTableRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectedTableRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
