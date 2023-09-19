import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

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
                child: Image.asset('assets/images/s23ultra.jpg',
                fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Galaxy S23 Ultra',
                style: TextStyles.forProductInCart,
              ),
              SizedBox(height: 5),
              Text(
                '\$1500',
                style: TextStyles.forCostOfProductInCart,
              ),
            ],
          ),
          const SizedBox(width: 20),
          SizedBox(
            height: 70,
            width: 25,
            child: Stack(
              children: [
                Container(
                  height: 70,
                  width: 30,
                  decoration: BoxDecoration(
                    color: MyColors.transparrantGreySelector,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 2),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.add,
                          color: MyColors.whiteColor,
                          size: Sizes.amountOfProductSelectorIcon,
                        ),
                      ),
                      const Expanded(
                          child: Center(child: SizedBox(child: Text('')))),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.dangerous_outlined,
                          color: MyColors.whiteColor,
                          size: Sizes.amountOfProductSelectorIcon,
                        ),
                      ),
                      const SizedBox(height: 2),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                  width: 30,
                  child: Center(
                      child: Expanded(
                       child: Text(
                        '2',
                      style: TextStyles.forAmountOfProductInCart,
                    ),
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
