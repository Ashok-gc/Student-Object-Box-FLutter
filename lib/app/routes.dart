import 'package:student_objectbox/screen/batch_student.dart';
import 'package:student_objectbox/screen/course_student.dart';
import 'package:student_objectbox/screen/dashboard.dart';
import 'package:student_objectbox/screen/login.dart';
import 'package:student_objectbox/screen/register.dart';
import 'package:student_objectbox/screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';

var getAppRoutes = <String, WidgetBuilder>{
  SplashScreen.route: (context) => const SplashScreen(),
  LoginScreen.route: (context) => const LoginScreen(),
  RegisterScreen.route: (context) => const RegisterScreen(),
  DashboardScreen.route: (context) => const DashboardScreen(),
  BatchStudentScreen.route: (context) => const BatchStudentScreen(),
  CourseStudentScreen.route: (context) => const CourseStudentScreen(),
};
