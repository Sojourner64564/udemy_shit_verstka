import 'package:flutter/material.dart';


class HotSalesTile extends StatelessWidget{
  const HotSalesTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Hot Sales'),
        TextButton(onPressed: (){}, child: const Text('see more')),
      ],
    );
  }
}
