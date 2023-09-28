import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/bloc/add_delete_to_cart_bloc/add_delete_to_cart_bloc.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/cart_screen/cubit/add_delete_to_cart.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/cart_screen/for_example/cart_mobile_phone.dart';


class ProductTile extends StatelessWidget {
  const ProductTile(
      {super.key,
      required this.mobilePhoneEntity,
      required this.addDeleteToCart,required this.amount, required this.addDeleteToCartBloc});
  
  final MobilePhoneEntity mobilePhoneEntity;
  final AddDeleteToCart addDeleteToCart;
  final String amount;
  final AddDeleteToCartBloc addDeleteToCartBloc;
  
  addToCart() => addDeleteToCartBloc.add(AddEvent(mobilePhoneEntity.id));
  decreaseFromCart() => addDeleteToCartBloc.add(DecreaseEvent(mobilePhoneEntity.id, mobilePhoneEntity));
  deleteFromCart() => addDeleteToCart.deleteFromCart(mobilePhoneEntity.id);

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
                  mobilePhoneEntity.imgAssetLink,
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
                width: MediaQuery.of(context).size.width * 0.43,
                child: Text(
                  mobilePhoneEntity.productName,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  softWrap: true,
                  style: TextStyles.forProductInCart,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                '\$ bruh',
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
                    color: MyColors.transparrantGreyForInkWell,
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
                      Material(
                        color: MyColors.transparrant,
                        child: InkWell(
                          splashColor: MyColors.orangeColor,
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                            addToCart();
                          },
                          child: Ink(
                            child: const Icon(
                              Icons.add,
                              color: MyColors.whiteColor,
                              size: Sizes.amountOfProductSelectorIcon,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox(child: Text(''))),
                      Material(
                        color: MyColors.transparrant,
                        child: InkWell(
                          splashColor: MyColors.orangeColor,
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                            decreaseFromCart();
                          },
                          child: Ink(
                            child: const Icon(
                              Icons.dangerous_outlined,
                              color: MyColors.whiteColor,
                              size: Sizes.amountOfProductSelectorIcon,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: Center(
                    child: Text(
                      amount,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.forAmountOfProductInCart,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Material(
            color: MyColors.transparrant,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: (){
                  deleteFromCart();
                },
                  splashColor: MyColors.transparrantGreyForInkWell,
                  borderRadius: BorderRadius.circular(10),
                  child: Ink(
                      child: const Icon(
            Icons.delete,
            color: MyColors.whiteColor,
          ),),),),
        ],
      ),
    );
  }
}
