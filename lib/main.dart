import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:potta_pos/src/core/app_initializer.dart';
import 'package:potta_pos/src/core/potta_pos.dart';
import 'package:potta_pos/src/core/service/app_bloc_observer.dart';

void main() async {
  final AppInitializer appInitializer = AppInitializer();

  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    //await dotenv.load(fileName: ".env");
    Bloc.observer = AppBlocObserver();

    await appInitializer.preAppRun();
    appInitializer.postAppRun();

    runApp(const PottaPos());
  }, (error, stack) {});
}
