import 'package:flutter/material.dart';
import 'package:navigationapp/widgets/category_item.dart';

import '../models/dummy-data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Navigation App'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        children: DUMMY_CATEGORIES
            .map((categoryData) =>
                CategoryItem(categoryData.id,categoryData.title, categoryData.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}
