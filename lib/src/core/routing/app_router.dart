
import 'package:auto_route/auto_route.dart';
import 'package:potta_pos/src/features/auth/ui/login_screen.dart';
import 'package:potta_pos/src/features/cart/ui/cart_screen.dart';
import 'package:potta_pos/src/features/home/ui/home_screen.dart';
import 'package:potta_pos/src/features/order/ui/order_screen.dart';
import 'package:potta_pos/src/features/pay_mode/ui/pay_mode_screen.dart';
import 'package:potta_pos/src/features/pay_mode/ui/pay_received_screen.dart';
import 'package:potta_pos/src/features/pay_mode/ui/phone_pay_screen.dart';
import 'package:potta_pos/src/features/profile/ui/profile_screen.dart';
import 'package:potta_pos/src/features/selected_table/ui/selected_table_screen.dart';
import 'package:potta_pos/src/shared/features/main_navigation/ui/main_navigation_wrapper.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: LoginRoute.page,initial: true),
    AutoRoute(page: SelectedTableRoute.page),
    AutoRoute(page: CartRoute.page),
    AutoRoute(page: PayModeRoute.page),
    AutoRoute(page: PhonePayRoute.page),
    AutoRoute(page: PayReceivedRoute.page),
    AutoRoute(
      page: MainNavigationRouter.page,
      children: [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: OrderRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),

  ];
}
