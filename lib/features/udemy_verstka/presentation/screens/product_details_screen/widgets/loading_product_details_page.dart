import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_details_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/cubit/animation_of_row_buttons_cubit.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/cubit/row_of_button_cubit.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/add_to_cart_button.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/color_and_memory_selector/color_and_memory_selector_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/color_and_memory_selector/color_buttons/inactive_color_button.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/color_and_memory_selector/memory_buttons/inactive_memory_button.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/grey_stars_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/pageview_for_details/pages_of_pageview/first_page_for_pageview.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/pageview_for_details/pages_of_pageview/second_page_for_pageview.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/pageview_for_details/pages_of_pageview/third_page_for_pageview.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/row_of_button_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/stars_tile.dart';

class LoadingProductDetailsPage extends StatelessWidget {
  LoadingProductDetailsPage(
      {super.key});
  final RowOfButtonCubit rowOfButtonCubit = RowOfButtonCubit();
  final AnimationOfRowButton animationOfRowButton = AnimationOfRowButton();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width/4.7;
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
                          const Text(
                            'загрузка',
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
                    const Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: GreyStarsTile(),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: StarsTile(
                            stars: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: RowOfButtonTile(
                        rowOfButtonCubit: rowOfButtonCubit,
                        animationOfRowButton: animationOfRowButton,
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: PageView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: size,
                                  child:  const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: Icon(Icons.memory_outlined,
                                          color: MyColors.greyColor,
                                          size: Sizes.forCharacteristicForPagePageview,
                                        ),
                                      ),
                                      Text('загрузка',
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
                                  child:  const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: Icon(Icons.camera_alt_outlined,
                                          color: MyColors.greyColor,
                                          size: Sizes.forCharacteristicForPagePageview,
                                        ),
                                      ),
                                      Text('загрузка MP',
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        maxLines: 2,
                                        style: TextStyles.forCharacteristicForPagePageview,),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: size,
                                  child: const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: Icon(Icons.radio,
                                          color: MyColors.greyColor,
                                          size: Sizes.forCharacteristicForPagePageview,
                                        ),
                                      ),
                                      Text('загрузка GB',
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        maxLines: 2,
                                        style: TextStyles.forCharacteristicForPagePageview,),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: size,
                                  child: const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: Icon(Icons.sd_card_outlined,
                                          color: MyColors.greyColor,
                                          size: Sizes.forCharacteristicForPagePageview,
                                        ),
                                      ),
                                      Text('загрузка GB',
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        maxLines: 2,
                                        style: TextStyles.forCharacteristicForPagePageview,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: SecondPageForPageview(),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: ThirdPageForPageview(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'Select color and capacity',
                        style: TextStyles.forColorSelectorText,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          InactiveColorButton(
                              color: Color.fromRGBO(1, 1, 53, 1)),
                          SizedBox(width: 10),
                          InactiveColorButton(
                              color: Color.fromRGBO(1, 1, 53, 1)),
                          Expanded(child: SizedBox()),
                          InactiveMemoryButton(
                            memory: 'загрузка',
                          ),
                          SizedBox(width: 10),
                          InactiveMemoryButton(
                            memory: 'загрузка',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            splashColor: MyColors.transparrantGreyForInkWell,
                            child: const AddToCartButton(cost: 'загрузка')),
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
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.35,
                    viewportFraction: 0.60,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
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
                              child: Image.asset(
                                'assets/gifs/loading.gif',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                )),
            const Expanded(child: SizedBox()),
          ],
        ),
      ],
    );
  }
}
