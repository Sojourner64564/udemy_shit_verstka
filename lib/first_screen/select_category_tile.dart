import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';

class SelectCategoryTile extends StatelessWidget{
  const SelectCategoryTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Select Category',
        style: TextStyles.hugeFontStyle),
        TextButton(onPressed: (){}, child: const Text('view all',
        style: TextStyles.smallOrangeStyle,
        )),
      ],
    );
  }
}
