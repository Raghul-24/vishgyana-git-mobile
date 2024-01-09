import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:git_mobile/firebase_options.dart';
import 'package:git_mobile/src/features/home_screen/home_controller/home_controller.dart';
import 'package:git_mobile/src/providers/app_providers.dart';
import 'package:git_mobile/src/services/local_storage/key_value_storage_base.dart';
import 'package:provider/provider.dart';
import 'dart:async';

import 'src/app.dart';
import 'package:device_preview/device_preview.dart';

Future<void> main() async {

  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await KeyValueStorageBase.init();
    runApp(DevicePreview(
      enabled: false,
      builder: (context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (_) => AppProvider(),),
          ChangeNotifierProvider(create: (_) =>
              HomeController()
          )
        ],
          child: const App()
      ),
       ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
    };
    ErrorWidget.builder = (FlutterErrorDetails details) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('An error occurred'),
        ),
        body: Center(child: Text(details.toString())),
      );
    };
  }, (Object error, StackTrace stack) {
    debugPrint(error.toString());
  });

}
