import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';


class HotSalesTile extends StatelessWidget{
  const HotSalesTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Hot Sales',
            style: TextStyles.hugeFontStyle),
        TextButton(onPressed: (){}, child: const Text('see more',
          style: TextStyles.smallOrangeStyle,
        )),
      ],
    );
  }
}
