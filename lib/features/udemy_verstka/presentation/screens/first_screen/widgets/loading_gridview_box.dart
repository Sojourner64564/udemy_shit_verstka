import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';

class LoadingGridviewBox extends StatelessWidget {
  const LoadingGridviewBox({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 15,
                      width: MediaQuery.of(context).size.height * 0.13,
                      color: MyColors.transparrant,
                      child: Shimmer.fromColors(
                        baseColor: MyColors.greyColor,
                        highlightColor: MyColors.whiteColor,
                        child: Container(
                          height: 15,
                          width: MediaQuery.of(context).size.height * 0.13,
                          decoration: BoxDecoration(
                            color: MyColors.greyColor,
                            borderRadius:
                            BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  height: 15,
                  width: MediaQuery.of(context).size.height * 0.08,
                  color: MyColors.transparrant,
                  child: Shimmer.fromColors(
                    baseColor: MyColors.greyColor,
                    highlightColor: MyColors.whiteColor,
                    child: Container(
                      height: 15,
                      width: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        color: MyColors.greyColor,
                        borderRadius:
                        BorderRadius.circular(2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 7,
            top: 7,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: MyColors.greyShadow
              ),

            ),
          ),
        ],
      ),
    );
  }
}
