import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:seasonz/screens/main_screens.dart';
import 'constants.dart';
import 'screens/home_screen.dart';
import 'screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final bool isLogged = await getCurrentUser();

  runApp(
    MyApp(
      isLogged: isLogged,
    ),
  );
}

Future getCurrentUser() async {
  return false;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final bool isLogged;

  MyApp({this.isLogged});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: AppBarTheme(
          color: kPrimaryColor,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.red),
        ),
        cupertinoOverrideTheme: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
            dateTimePickerTextStyle: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            pickerTextStyle: TextStyle(
              color: Colors.blue,
              fontSize: 12,
            ),
          ),
        ),
      ),
      initialRoute: isLogged ? MainScreens.id : WelcomeScreen.id,
      debugShowCheckedModeBanner: kReleaseMode ? true : false,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        MainScreens.id: (context) => MainScreens(),
      },
    );
  }
}
