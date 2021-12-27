import 'package:flutter/material.dart';
import 'package:meal/provider/meal_provider.dart';
import 'package:meal/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
      ChangeNotifierProvider<MealProvider>(create: (_) => MealProvider(),)
    ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        textTheme: TextTheme(
            bodyText1: TextStyle(fontSize: 18.0),
            bodyText2: TextStyle(fontSize: 16.0),
            button: TextStyle(fontSize: 24.0, color: Colors.white), // and so on for every text style
        ),
      ),
    );
  }
}
