import 'package:al_mareef/Views/contactUs.dart';
import 'package:flutter/material.dart';

import 'Views/assignments.dart';
import 'Views/contactUsWithOutSignIn.dart';
import 'Views/forgotPassword.dart';
import 'Views/languageSelector.dart';
import 'Views/myGrades.dart';
import 'Views/notification.dart';
import 'Views/signIn.dart';
import 'Views/splash.dart';
import 'Views/welcome.dart';
import 'Widgets/navigationBar.dart';

void main() {
  runApp(MyApp());
}
var routes = <String, WidgetBuilder>{
  "/welcome": (BuildContext context) => WelcomeScreen(),
  "/login": (BuildContext context) => SignInScreen(),
  "/forgetPassword": (BuildContext context) => forgotPasswordScreen(),
  "/lanuageSelect": (BuildContext context) => LanguageSelector(),
  "/bottomNavigation": (BuildContext context) => navigationBar(),
  "/notifi": (BuildContext context) =>  notifications(),
  "/mygrades": (BuildContext context) =>  myGrades(),
  "/contactus": (BuildContext context) =>  contactUsWithOutSignIn(),
};
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: splashScreen(),
      routes: routes,
    );
  }
}
