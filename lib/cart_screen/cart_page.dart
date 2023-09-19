import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/cart_screen/widgets/product_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(child: SizedBox()),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SizedBox(
            child: Text(
              'My Cart',
              style: TextStyles.bigMyCart,
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: MyColors.deepBlueColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: double.infinity,
                  child: ListView.separated(
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return const ProductTile();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(height: 40);
                    },
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Divider(
                thickness: 0.3,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      'Total',
                      style: TextStyles.forSmallLightTextAtCart,
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      '\$6,000',
                      style: TextStyles.forSmallLightButLittleWieghtTextAtCart,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'us',
                      style: TextStyles.forSmallLightButLittleWieghtTextAtCart,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      'Delivery',
                      style: TextStyles.forSmallLightTextAtCart,
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      'Free',
                      style: TextStyles.forSmallLightButLittleWieghtTextAtCart,
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 0.5,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: MyColors.orangeColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'Checkout',
                        style: TextStyles.forCheckout,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
