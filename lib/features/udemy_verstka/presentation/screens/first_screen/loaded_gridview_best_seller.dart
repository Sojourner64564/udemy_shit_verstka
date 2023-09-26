import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/cart_screen/cubit/add_delete_to_cart.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/loaded_gridview_box.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/product_details_screen.dart';
import '../../../../../core/injectable/injectable.dart';
import '../../../domain/entities/mobile_phone_entity.dart';
import '../../bloc/get_smartphone_grid_first_screen_bloc/get_smartphone_grid_first_screen_bloc.dart';

class LoadedGridviewBestSeller extends StatelessWidget {
  LoadedGridviewBestSeller({super.key, required this.addDeleteToCart, required this.mobilePhonesEntity});

  final AddDeleteToCart addDeleteToCart;
  final GetSmartphoneGridFirstScreenBloc getSmartphoneGridFirstScreenBloc = getIt<GetSmartphoneGridFirstScreenBloc>();
  final List<MobilePhoneEntity> mobilePhonesEntity;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: mobilePhonesEntity.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.80,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Material(
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              splashColor: MyColors.transparrantGreyForInkWell,
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailsScreen(
                          addDeleteToCart: addDeleteToCart,
                          id: mobilePhonesEntity[index].id,
                        ),
                  ),
                );
              },
              child: LoadedGridviewBox(
                mobilePhoneEntity: mobilePhonesEntity[index],
              ),
            ),
          );
        });
  }
}
