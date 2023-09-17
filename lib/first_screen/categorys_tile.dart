import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/first_screen/example_categorys.dart';
import 'package:udemy_shit_verstka/first_screen/for_example/category.dart';

class CategorysTile extends StatelessWidget{
   CategorysTile({super.key});

final List<Category> categorys = [
  Category(icon: Icons.smartphone_outlined, title: 'Phones', onTap: () { print('Phones'); },),
  Category(icon: Icons.computer, title: 'Computer76666', onTap: () { print('Computer'); },),
  Category(icon: Icons.health_and_safety_outlined, title: 'Health', onTap: () { print('Health'); },),
  Category(icon: Icons.menu_book, title: 'Books', onTap: () { print('Books'); },),
  Category(icon: Icons.menu_book, title: 'Books', onTap: () { print('Books'); },),
  Category(icon: Icons.menu_book, title: 'Books', onTap: () { print('Books'); },),
  Category(icon: Icons.menu_book, title: 'Books', onTap: () { print('Books'); },),

];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categorys.length,
        itemBuilder: (BuildContext context, int index) {
          return ExampleCategorys(category: categorys[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 20);
        },

      ),
    );
  }
}
