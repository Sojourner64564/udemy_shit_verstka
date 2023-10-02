import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/core/injectable/injectable.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/bloc/get_smartphone_grid_first_screen_bloc/get_smartphone_grid_first_screen_bloc.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/cart_screen/cubit/add_delete_to_cart.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/for_example/mobile_phone.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/widgets/loading_gridview_box.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/product_details_screen.dart';


class LoadingGridviewBestSeller extends StatelessWidget {
  const LoadingGridviewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.80,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return const LoadingGridviewBox();
        });
  }
}
