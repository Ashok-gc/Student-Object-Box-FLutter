import 'package:student_objectbox/app/app.dart';
import 'package:student_objectbox/state/objectbox_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'helper/objectbox.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ObjectBoxInstance.deleteDatabase();
  ObjectBoxState.objectBoxInstance = await ObjectBoxInstance.init();
  // Disable landscape mode
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (value) => runApp(
      const MyApp(),
    ),
  );
}
