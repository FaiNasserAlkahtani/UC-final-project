//import 'package:final_project/pages/excersise.dart';
import 'package:final_project/pages/account.dart';
import 'package:final_project/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//ksnuvsinvus
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),

      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 45, 72, 119),
        primarySwatch: Colors.blueGrey,
        accentColor: Color.fromARGB(179, 255, 251, 237),
        scaffoldBackgroundColor: Color.fromARGB(255, 136, 163, 175),
        textTheme: TextTheme(bodyText2: TextStyle(color: Color.fromARGB(255, 76, 76, 76))),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Color.fromARGB(179, 255, 251, 237))
        
        
        )

      //body: MyApp(),

    );
  }
}
