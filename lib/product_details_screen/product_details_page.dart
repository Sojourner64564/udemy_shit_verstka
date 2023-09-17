import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/product_details_screen/cubit/RowOfButtonCubit.dart';
import 'package:udemy_shit_verstka/product_details_screen/cubit/animation_of_row_buttons_cubit.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/add_to_cart_button.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/color_and_memory_selector/color_and_memory_selector_tile.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/pageview_for_details/pageview_tile_device_characteristic.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/row_of_button_tile.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({super.key});

 final RowOfButtonCubit rowOfButtonCubit = RowOfButtonCubit();
  final AnimationOfRowButton animationOfRowButton = AnimationOfRowButton();

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        const Text(
                          'Galaxy Note 20 Ultra',
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Звёздочки'),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: RowOfButtonTile(rowOfButtonCubit: rowOfButtonCubit, animationOfRowButton: animationOfRowButton,),
                  ),
                  const SizedBox(height: 15),
                  PageviewTileDeviceCharacteristic(rowOfButtonCubit: rowOfButtonCubit, animationOfRowButton: animationOfRowButton,),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Select color and capacity',
                    style: TextStyles.forColorSelectorText,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ColorAndMemorySelectorTile(),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: AddToCartButton(cost: '1,500'),
                  ),
                ],
              ),
            ),
          ],       ),
      ],
    );
  }
}