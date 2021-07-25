import 'package:flutter/material.dart';
import 'package:haabitto/Pages/journal_page.dart';
import 'package:haabitto/Pages/routes.dart';
import 'package:haabitto/Pages/timer_page.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HAABITTO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.timerRoute: (context) => TimerPage(),
        MyRoutes.journalRoute: (context) => JournalPage(),
      },
    );
  }
}
