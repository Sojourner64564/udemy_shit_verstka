import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_details_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/cubit/animation_of_row_buttons_cubit.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/cubit/row_of_button_cubit.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/add_to_cart_button.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/color_and_memory_selector/color_and_memory_selector_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/grey_stars_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/pageview_for_details/pageview_tile_device_characteristic.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/row_of_button_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/stars_tile.dart';

import '../cart_screen/cubit/add_delete_to_cart.dart';


class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({super.key, required this.addDeleteToCart, required this.mobilePhoneDetailsEntity});
final AddDeleteToCart addDeleteToCart;
 final RowOfButtonCubit rowOfButtonCubit = RowOfButtonCubit();
  final AnimationOfRowButton animationOfRowButton = AnimationOfRowButton();
  final MobilePhoneDetailsEntity mobilePhoneDetailsEntity;

  addToCart() => addDeleteToCart.addToCart(mobilePhoneDetailsEntity.id);
  late final onTap = (context){
    print('onTap Function');
  };


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: MyColors.pageBackground,
        ),
        Column(
          children: [
            const Expanded(child: SizedBox()),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.50,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: MyColors.greyShadow,
                      spreadRadius: 20,
                      blurRadius: 20,
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: MyColors.whiteColor),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                           Text(
                             mobilePhoneDetailsEntity.productName,
                            style: TextStyles.forProductTitleDetails,
                          ),
                          const Expanded(child: SizedBox()),
                          Container(
                            width: 45,
                            height: 40,
                            decoration: BoxDecoration(
                              color: MyColors.deepBlueColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.favorite_outline,
                              color: MyColors.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                     Stack(children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: GreyStarsTile(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: StarsTile(stars: mobilePhoneDetailsEntity.score,),
                      ),
                    ],),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: RowOfButtonTile(rowOfButtonCubit: rowOfButtonCubit, animationOfRowButton: animationOfRowButton,),
                    ),
                    const SizedBox(height: 15),
                    PageviewTileDeviceCharacteristic(rowOfButtonCubit: rowOfButtonCubit, animationOfRowButton: animationOfRowButton, mobilePhoneDetailsEntity: mobilePhoneDetailsEntity,),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text('Select color and capacity',
                      style: TextStyles.forColorSelectorText,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: ColorAndMemorySelectorTile(mobilePhoneDetailsEntity: mobilePhoneDetailsEntity,),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          splashColor: MyColors.transparrantGreyForInkWell,
                            onTap: (){
                              addToCart();
                              onTap(context);
                            },
                            child: AddToCartButton(cost: mobilePhoneDetailsEntity.newCost)),
                      ),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ],
        ),
         Column(
          children: [
            const SizedBox(),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.4,
              width: double.infinity,
              child: CarouselSlider(
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height*0.35,
                  viewportFraction: 0.60,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                ),
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                              color: MyColors.whiteColor,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(mobilePhoneDetailsEntity.imgAssetLink, fit: BoxFit.cover,),
                            ),
                          ),
                      );
                    },
                  );
                }).toList(),
              )
            ),
            const Expanded(child: SizedBox()),
          ],),
      ],
    );
  }
}
