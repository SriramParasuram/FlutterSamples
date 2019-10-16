import 'package:flutter/material.dart';
import 'package:navigationapp/screens/categories_meals_screen.dart';

import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Navigation App',
      theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.blue,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 20, 20, 0.7),
              ),
              body2: TextStyle(color: Color.fromRGBO(20, 20, 20, 0.7)),
              title: TextStyle(fontSize: 24, fontFamily: 'RobotoCondensed'))),
      // home: CategoriesScreen(),
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen()
      },
    );
  }
}
