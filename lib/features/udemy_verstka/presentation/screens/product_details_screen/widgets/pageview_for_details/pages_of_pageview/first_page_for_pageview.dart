
import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_details_entity.dart';
import '../../../../first_screen/for_example/mobile_phone.dart';

class FirstPageForPageview extends StatelessWidget{
  const FirstPageForPageview({super.key, required this.mobilePhoneDetailsEntity});
  final MobilePhoneDetailsEntity mobilePhoneDetailsEntity;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width/4.7;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      SizedBox(
        width: size,
        child:  Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(Icons.memory_outlined,
              color: MyColors.greyColor,
                size: Sizes.forCharacteristicForPagePageview,
              ),
            ),
            Text(mobilePhoneDetailsEntity.cpu,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              maxLines: 2,
              style: TextStyles.forCharacteristicForPagePageview,
            ),
          ],
        ),
      ),
       SizedBox(
        width: size,
        child:  Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(Icons.camera_alt_outlined,
              color: MyColors.greyColor,
                size: Sizes.forCharacteristicForPagePageview,
              ),
            ),
            Text('${mobilePhoneDetailsEntity.camera} MP',
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              maxLines: 2,
              style: TextStyles.forCharacteristicForPagePageview,),
          ],
        ),
      ),
       SizedBox(
        width: size,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(Icons.radio,
              color: MyColors.greyColor,
                size: Sizes.forCharacteristicForPagePageview,
              ),
            ),
            Text('${mobilePhoneDetailsEntity.ram} GB',
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              maxLines: 2,
              style: TextStyles.forCharacteristicForPagePageview,),
          ],
        ),
      ),
       SizedBox(
        width: size,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(Icons.sd_card_outlined,
              color: MyColors.greyColor,
                size: Sizes.forCharacteristicForPagePageview,
              ),
            ),
            Text('${mobilePhoneDetailsEntity.maxMemory} GB',
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              maxLines: 2,
              style: TextStyles.forCharacteristicForPagePageview,
            ),
          ],
        ),
      ),
    ],
    );
  }
}