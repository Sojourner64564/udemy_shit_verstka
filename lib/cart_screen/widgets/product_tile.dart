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
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.43,
                child: const Text(
                  'Galaxy S23 Ultra',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  softWrap: true,
                  style: TextStyles.forProductInCart,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                '\$1500',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyles.forCostOfProductInCart,
              ),
            ],
          ),
          const Expanded(child: SizedBox(width: 20)),
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
                          child: SizedBox(child: Text(''))),
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
                    child: Text(
                     '2',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.forAmountOfProductInCart,
                     ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.delete, color: MyColors.whiteColor,),
        ],
      ),
    );
  }
}
