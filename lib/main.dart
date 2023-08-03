import 'package:flutter/material.dart';
//import 'package:fluttter_test_application/pages/home_page.dart';
//import 'package:fluttter_test_application/pages/test_page.dart';
import 'package:fluttter_test_application/pages/main_page.dart';
import 'package:fluttter_test_application/pages/loginPage.dart';
import 'package:fluttter_test_application/styles/app_colors.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: "Urbanist",
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => LoginPage(),
        '/home':(context) =>MainPage(),
      },
      );
}
}
