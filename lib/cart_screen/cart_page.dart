import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/cart_screen/for_example/cart_mobile_phone.dart';
import 'package:udemy_shit_verstka/cart_screen/widgets/product_tile.dart';
import 'package:udemy_shit_verstka/cubit/add_delete_to_cart.dart';
import 'package:udemy_shit_verstka/cubit/total_number_cubit.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key, required this.addDeleteToCart});
  final AddDeleteToCart addDeleteToCart;

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final TotalNumberCubit totalNumberCubit = TotalNumberCubit();
  @override
  void initState() {
    widget.addDeleteToCart.totalNumberCubit = totalNumberCubit;
    super.initState();
  }

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
                  child: BlocBuilder<AddDeleteToCart, List<CartMobilePhone>>(
                    bloc: widget.addDeleteToCart,
                    builder: (context, state) {
                      return ListView.separated(
                        itemCount: state.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ProductTile(
                              cartMobilePhone: state[index],
                              addDeleteToCart: widget.addDeleteToCart);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(height: 40);
                        },
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Divider(
                thickness: 0.3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    const Text(
                      'Total',
                      style: TextStyles.forSmallLightTextAtCart,
                    ),
                    const Expanded(child: SizedBox()),
                    BlocBuilder<TotalNumberCubit, String>(
                      bloc: totalNumberCubit,
                      builder: (context, state) {
                        return Text(
                          '\$$state',
                          style:
                              TextStyles.forSmallLightButLittleWieghtTextAtCart,
                        );
                      },
                    ),
                    const SizedBox(width: 5),
                    const Text(
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
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    splashColor: MyColors.orangeColor,
                    onTap: () {
                      widget.addDeleteToCart.initCart();
                    },
                    child: Ink(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: MyColors.orangeColor,
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Checkout',
                          style: TextStyles.forCheckout,
                        ),
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
