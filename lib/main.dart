import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/filters_screen.dart';
import 'package:flutter_complete_guide/screens/meal_detail_screen.dart';

import 'screens/category_meals_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/categories_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText2: TextStyle(color:Color.fromRGBO(20, 51, 51, 1)),
          bodyText1: TextStyle(color:Color.fromRGBO(20, 51, 51, 1)),
          headline6: TextStyle(
            fontSize: 20
          )
        ),

      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName : (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },

    );
  }
}

