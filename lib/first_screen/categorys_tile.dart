import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/first_screen/example_categorys.dart';

class CategorysTile extends StatelessWidget{
  const CategorysTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ExampleCategorys(icon: Icons.access_time_filled, title: 'Phone');
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 20);
        },

      ),
    );
  }
}
