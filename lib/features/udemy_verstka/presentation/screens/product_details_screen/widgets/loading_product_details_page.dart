import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/add_to_cart_button.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/grey_stars_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/loading_add_to_cart_button.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/pageview_for_details/pages_of_pageview/second_page_for_pageview.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/pageview_for_details/pages_of_pageview/third_page_for_pageview.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/stars_tile.dart';

class LoadingProductDetailsPage extends StatelessWidget {
  const LoadingProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width / 4.7;
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
                          Container(
                            width: MediaQuery.of(context).size.height * 0.30,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: MyColors.greyColor),
                            child: Shimmer.fromColors(
                              baseColor: MyColors.transparrantGreyForInkWell,
                              highlightColor: MyColors.whiteColor,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: MyColors.greyColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 35,
                            width: MediaQuery.of(context).size.width / 4.1,
                            decoration: const BoxDecoration(
                              border: Border(
                                  ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Center(
                                child: Text(
                                  'Shop',
                                  style: TextStyles.forInactiveButtonsForPageview,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: MediaQuery.of(context).size.width / 4.1,
                            decoration: const BoxDecoration(
                              border: Border(
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Center(
                                child: Text(
                                  'Details',
                                  style: TextStyles.forInactiveButtonsForPageview,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: MediaQuery.of(context).size.width / 4.1,
                            decoration: const BoxDecoration(
                              border: Border(
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Center(
                                child: Text(
                                  'Features',
                                  style: TextStyles.forInactiveButtonsForPageview,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: size,
                                  color: MyColors.transparrant,
                                  child: Shimmer.fromColors(
                                    baseColor: MyColors.greyColor,
                                    highlightColor: MyColors.whiteColor,
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Icon(
                                            Icons.memory_outlined,
                                            color: MyColors.greyColor,
                                            size: Sizes
                                                .forCharacteristicForPagePageview,
                                          ),
                                        ),
                                        Container(
                                          height: 15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.09,
                                          decoration: BoxDecoration(
                                            color: MyColors.greyColor,
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size,
                                  color: MyColors.transparrant,
                                  child: Shimmer.fromColors(
                                    baseColor: MyColors.greyColor,
                                    highlightColor: MyColors.whiteColor,
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Icon(
                                            Icons.camera_alt_outlined,
                                            color: MyColors.greyColor,
                                            size: Sizes
                                                .forCharacteristicForPagePageview,
                                          ),
                                        ),
                                        Container(
                                          height: 15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.09,
                                          decoration: BoxDecoration(
                                            color: MyColors.greyColor,
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size,
                                  color: MyColors.transparrant,
                                  child: Shimmer.fromColors(
                                    baseColor: MyColors.greyColor,
                                    highlightColor: MyColors.whiteColor,
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Icon(
                                            Icons.radio,
                                            color: MyColors.greyColor,
                                            size: Sizes
                                                .forCharacteristicForPagePageview,
                                          ),
                                        ),
                                        Container(
                                          height: 15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.09,
                                          decoration: BoxDecoration(
                                            color: MyColors.greyColor,
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size,
                                  color: MyColors.transparrant,
                                  child: Shimmer.fromColors(
                                    baseColor: MyColors.greyColor,
                                    highlightColor: MyColors.whiteColor,
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Icon(
                                            Icons.sd_card_outlined,
                                            color: MyColors.greyColor,
                                            size: Sizes
                                                .forCharacteristicForPagePageview,
                                          ),
                                        ),
                                        Container(
                                          height: 15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.09,
                                          decoration: BoxDecoration(
                                            color: MyColors.greyColor,
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: MyColors.greyColor,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Shimmer.fromColors(
                              baseColor: MyColors.transparrantGreyForInkWell,
                              highlightColor: MyColors.whiteColor,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: MyColors.greyColor,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: MyColors.greyColor,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Shimmer.fromColors(
                              baseColor: MyColors.transparrantGreyForInkWell,
                              highlightColor: MyColors.whiteColor,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: MyColors.greyColor,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: MyColors.greyColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Shimmer.fromColors(
                              baseColor: MyColors.transparrantGreyForInkWell,
                              highlightColor: MyColors.whiteColor,
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: MyColors.greyColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: MyColors.greyColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Shimmer.fromColors(
                              baseColor: MyColors.transparrantGreyForInkWell,
                              highlightColor: MyColors.whiteColor,
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: MyColors.greyColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                     const SizedBox(height: 15),
                     const Padding(
                       padding: EdgeInsets.symmetric(horizontal: 30),
                       child: LoadingAddToCartButton(),
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
