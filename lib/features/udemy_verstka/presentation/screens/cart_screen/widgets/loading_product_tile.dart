import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';

class LoadingProductTile extends StatelessWidget{
  const LoadingProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: MyColors.whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(
                  'assets/gifs/loading.gif',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Container(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.40,
                decoration: BoxDecoration(
                  color: MyColors.greyColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Shimmer.fromColors(
                    baseColor: MyColors.transparrantGreyForInkWell,
                    highlightColor: MyColors.whiteColor,
                    child: Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width * 0.40,
                      decoration: BoxDecoration(
                        color: MyColors.greyColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),

                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  color: MyColors.greyColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Shimmer.fromColors(
                  baseColor: MyColors.transparrantGreyForInkWell,
                  highlightColor: MyColors.whiteColor,
                  child: Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      color: MyColors.greyColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),

                ),
              ),
            ],
          ),
          const Expanded(child: SizedBox(width: 20)),
          Container(
            height: 70,
            width: 25,
            decoration: BoxDecoration(
              color: MyColors.transparrantGreyForInkWell,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: MyColors.transparrantGreyForInkWell,
              borderRadius: BorderRadius.circular(20),
            ),
          )
        ],
      ),
    );
  }
}