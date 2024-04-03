import 'package:asd_project_app/screens/ai_page.dart';
import 'package:asd_project_app/screens/kids.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'REST - ASD',
      home: HomeScreen(title: 'ASD'),
     routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => const HomeScreen(title: "Home",),
        '/b': (BuildContext context) => const KidsPage(),
        '/c': (BuildContext context) => const AIPage(),
      },
    );
  }
}
