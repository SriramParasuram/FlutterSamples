import 'package:flutter/material.dart';
import 'package:navigationapp/models/dummy-data-2.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categorymealsscreen';
  // final String categoryMealsId,categoryTitle;

  // CategoryMealsScreen(this.categoryMealsId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryTitle = routeArgs['title'];
    final categoryID = routeArgs['id'];

    final categoryMeals = DUMMY_MEALS.where((meal) {
      // print('list of meals ${meal.categories}');
      return meal.categories.contains(categoryID);
    }).toList();

    // print(
    //     'category meals is ${categoryMeals.elementAt(0).title} ${categoryTitle} ${categoryID}');

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  categoryMeals[index].title,
                  style: Theme.of(context).textTheme.title,
                ),
              )
            ],
          );
          // return Text('');
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
