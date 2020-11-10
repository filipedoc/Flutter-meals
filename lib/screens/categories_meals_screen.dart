import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:meals/components/meal_item.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/category.dart';

class CategoriesMeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;

    final categoriesmeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoriesmeals.length,
        itemBuilder: ((context, index) {
          return MealItem(categoriesmeals[index]);
        }),
      ),
    );
  }
}
