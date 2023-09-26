import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/core/injectable/injectable.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/bloc/get_product_phone_details/get_product_phone_details_bloc.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/product_details_page.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/loading_product_details_page.dart';
import '../cart_screen/cart_screen.dart';
import '../cart_screen/cubit/add_delete_to_cart.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen(
      {super.key,
      required this.addDeleteToCart,
      required this.id});
  final AddDeleteToCart addDeleteToCart;
  final String id;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final GetProductPhoneDetailsBloc getProductPhoneDetailsBloc =
      getIt<GetProductPhoneDetailsBloc>();
  @override
  void initState() {
    getProductPhoneDetailsBloc.add(GetPhoneDetailsEvent(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.pageBackground,
        titleSpacing: 0,
        elevation: 0,
        leadingWidth: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: MyColors.deepBlueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_sharp,
                    color: MyColors.whiteColor,
                    size: Sizes.iconAppBarSize,
                  ),
                ),
              ),
              const Text(
                'Product Details',
                style: TextStyles.forFilterTextTwo,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CartScreen(
                              addDeleteToCart: widget.addDeleteToCart,
                            ),
                    ),
                  );
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: MyColors.orangeColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                    color: MyColors.whiteColor,
                    size: Sizes.iconAppBarSize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: BlocBuilder<GetProductPhoneDetailsBloc, GetProductPhoneDetailsState>(
        bloc: getProductPhoneDetailsBloc,
        builder: (context, state) {
          if(state is EmptyState){
            print('EmptyState');
            return LoadingProductDetailsPage();
          }else if(state is LoadingState){
            print('LoadingState');
            return LoadingProductDetailsPage();
          }else if(state is LoadedState){
            print('fdfddf');
            return ProductDetailsPage(
              addDeleteToCart: widget.addDeleteToCart,
              mobilePhoneDetailsEntity: state.mobilePhoneDetailsEntity,
            );
          }else{
            print('ErrorState');
            return LoadingProductDetailsPage();
          }
        },
      ),
    );
  }
}
