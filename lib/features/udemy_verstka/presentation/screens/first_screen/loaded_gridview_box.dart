import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import '../../../domain/entities/mobile_phone_entity.dart';

class LoadedGridviewBox extends StatelessWidget {
  const LoadedGridviewBox({super.key, required this.mobilePhoneEntity});

  final MobilePhoneEntity mobilePhoneEntity;

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
                    mobilePhoneEntity.imgAssetLink,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$${mobilePhoneEntity.newCost}',
                      style: TextStyles.hugeFontForCost,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '\$${mobilePhoneEntity.oldCost}',
                      style: TextStyles.greyTextThroughLineCost,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  mobilePhoneEntity.productName,
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
