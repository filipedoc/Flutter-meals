import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/screens/tabs_screen.dart';
import 'package:meals/utils/app_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 255, 219, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 17,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        AppRoute.HOME: (context) => TabsScreen(),
        AppRoute.CATEGORIES_MEALS: (context) => CategoriesMeals(),
        AppRoute.MEAL_DETAIL: (context) => MealDetailScreen(),
      },
    );
  }
}
