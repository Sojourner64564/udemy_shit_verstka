import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';

class LoadingGridviewBox extends StatelessWidget {
  const LoadingGridviewBox({super.key});


  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: MyColors.whiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/gifs/loading.gif',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 5),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '...',
                      style: TextStyles.hugeFontForCost,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '...',
                      style: TextStyles.greyTextLineCost,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Text(
                  '...',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Positioned(
            right: 7,
            top: 7,
            child: GestureDetector(
              onTap: (){},
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: MyColors.greyShadow,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(50),
                    color: MyColors.whiteColor
                ),
                child: const Icon(
                  Icons.favorite_outline,
                  size: Sizes.iconFavoriteItemButtonSize,
                  color: MyColors.orangeColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
