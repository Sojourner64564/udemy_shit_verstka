import 'package:flutter/material.dart';

class SelectCategoryTile extends StatelessWidget{
  const SelectCategoryTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Select Category'),
        TextButton(onPressed: (){}, child: const Text('view all')),
      ],
    );
  }
}
