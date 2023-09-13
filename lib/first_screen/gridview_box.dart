import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';


class GridviewBox extends StatelessWidget{
  const GridviewBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5,10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/s23ultra.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            const Row(
              children: [
                Text('\$1,213',
                style: TextStyles.hugeFontForCost,
                ),
                SizedBox(width: 5),
                Text('\$1337',
                style: TextStyles.greyTextThroughLineCost,
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Text('Samsung Galaxy S23',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
