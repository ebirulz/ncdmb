import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'utils/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NCDMB',
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
      // default app loading screen
      initialRoute: '/splash_screen',
      // load all app screen routes
      routes: customRoutes,
    );
  }
}