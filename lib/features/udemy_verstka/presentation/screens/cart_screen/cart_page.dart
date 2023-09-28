import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/core/injectable/injectable.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/bloc/add_delete_to_cart_bloc/add_delete_to_cart_bloc.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/bloc/get_products_in_cart_bloc/get_products_in_cart_bloc.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/cart_screen/cubit/add_delete_to_cart.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/cart_screen/cubit/total_number_cubit.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/cart_screen/widgets/product_tile.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key, required this.addDeleteToCart});
  final AddDeleteToCart addDeleteToCart;

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final TotalNumberCubit totalNumberCubit = TotalNumberCubit();
  final GetProductsInCartBloc getProductsInCartBloc =
      getIt<GetProductsInCartBloc>();
  final AddDeleteToCartBloc addDeleteToCartBloc = getIt<AddDeleteToCartBloc>();
  @override
  void initState() {
    addDeleteToCartBloc.add(const InitEvent());
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
                  child: BlocBuilder<GetProductsInCartBloc, GetProductsInCartState>(
                    bloc: getProductsInCartBloc,
                    builder: (context, cartState) {
                      if (cartState is EmptyState) {
                        return const Text(
                          'EmptyState',
                          style: TextStyles.smallOrangeStyle,
                        );
                      }
                      if (cartState is LoadingState) {
                        return const Text(
                          'LoadingState',
                          style: TextStyles.smallOrangeStyle,
                        );
                      }
                      if (cartState is LoadedState) {
                        return ListView.separated(
                          itemCount: cartState.cartList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return BlocBuilder<AddDeleteToCartBloc,
                                AddDeleteToCartState>(
                              bloc: addDeleteToCartBloc,
                              builder: (context, addDeleteState) {
                                if(addDeleteState is AddDeleteEmptyState){return const Text('AddDeleteEmptyState', style: TextStyles.smallOrangeStyle);}
                                if(addDeleteState is AddDeleteLoadingState){return const Text('loadingTile', style: TextStyles.smallOrangeStyle);}
                                if(addDeleteState is AddDeleteLoadedState){
                                  return ProductTile(
                                    mobilePhoneEntity: cartState.cartList[index],
                                    addDeleteToCart: widget.addDeleteToCart,
                                    amount: addDeleteState.listAmount[index].toString(),
                                    addDeleteToCartBloc: addDeleteToCartBloc,
                                  );
                                }
                                else{return const Text('ErrorState', style: TextStyles.smallOrangeStyle);}
                              },
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(height: 40);
                          },
                        );
                      } else {
                        return const Text('ErrorState');
                      }
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
                      getProductsInCartBloc.add(GetCartEvent());

                      // widget.addDeleteToCart.initCart();
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
