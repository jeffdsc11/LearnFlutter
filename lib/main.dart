import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/utils/routes.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color:Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        )),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.homeRoute,
        routes: {
        "/": (context)=> LoginPage(),
        MyRoutes.homeRoute: (context)=> HomePage(),
        MyRoutes.loginRoute:(context)=> LoginPage()
        },
    );
  }
}
