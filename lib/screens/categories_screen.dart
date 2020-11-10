import 'package:flutter/material.dart';
import 'package:meals/components/category_item.dart';
import 'package:meals/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(15),
          sliver: SliverGrid.count(
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            crossAxisCount: 2,
            childAspectRatio: 1.7,
            children: DUMMY_CATEGORIES.map((cat) => CategoryItem(cat)).toList(),
          ),
        ),
      ],
    );
  }
}
