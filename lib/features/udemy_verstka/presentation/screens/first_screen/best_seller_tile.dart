import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';


class BestSellerTile extends StatelessWidget{
  const BestSellerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Best Seller',
            style: TextStyles.hugeFontStyle),
        TextButton(onPressed: (){}, child: const Text('see more',
          style: TextStyles.smallOrangeStyle,
        )),
      ],
    );
  }
}
