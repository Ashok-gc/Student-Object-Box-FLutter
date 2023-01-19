import 'package:student_objectbox/app/routes.dart';
import 'package:student_objectbox/app/theme.dart';
import 'package:flutter/material.dart';

import '../screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student course using API',
      debugShowCheckedModeBanner: false,
      theme: getApplicationThemeData(),
      initialRoute: SplashScreen.route,
      routes: getAppRoutes,
    );
  }
}
