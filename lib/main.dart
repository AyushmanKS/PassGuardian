import 'package:flutter/material.dart';
import 'package:passdiary/screens/splash_screen.dart';

// hive packages
//import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // initializing Hive
  await Hive.initFlutter();

  // opening/creating a Hive box
  await Hive.openBox('myBox');

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const SplashScreen()
        //RegisterScreen()
        //PasswordGenerator()
        //ValidationScreen(),
        //LoginScreen(),
        );
  }
}
