import 'package:flutter/material.dart';
import 'package:navigationapp/screens/categories_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  void selectCategory(BuildContext ctx, String id,String title) {
    // Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
    //   return CategoryMealsScreen(id, title);
    // }));

    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName, arguments: {'id':id, 'title':title});
  }

  CategoryItem(this.id, this.title,this.color);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context, this.id, this.title),
      splashColor: Colors.blue,  //Theme.of(context).primaryColor,
      // this should be the same as that of the container
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          this.title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.3), color.withOpacity(1)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
