import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/cart_screen/cubit/add_delete_to_cart.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/best_seller_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/categorys_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/loaded_gridview_best_seller.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/hot_sales_image.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/hot_sales_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/search_bar_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/select_category_tile.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/widgets/loading_gridview_best_seller.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/widgets/loading_gridview_box.dart';

import '../../../../../core/injectable/injectable.dart';
import '../../bloc/get_smartphone_grid_first_screen_bloc/get_smartphone_grid_first_screen_bloc.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final AddDeleteToCart addDeleteToCart = AddDeleteToCart();

  final GetSmartphoneGridFirstScreenBloc getSmartphoneGridFirstScreenBloc = getIt<
      GetSmartphoneGridFirstScreenBloc>();

  @override
  void initState() {
    getSmartphoneGridFirstScreenBloc.add(GetGridSmartphonesEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.pageBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SelectCategoryTile(),
              CategorysTile(),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SearchBarTile(),
              ),
              const HotSalesTile(),
              const HotSalesImage(),
              const BestSellerTile(),
              BlocBuilder<GetSmartphoneGridFirstScreenBloc, GetSmartphoneGridFirstScreenState>(
                bloc: getSmartphoneGridFirstScreenBloc,
                builder: (context, state) {
                  if(state is EmptyState){
                    return LoadingGridviewBestSeller();
                  }else if(state is LoadingState){
                    return  LoadingGridviewBestSeller();
                  }else if(state is LoadedState){
                    return LoadedGridviewBestSeller(addDeleteToCart: addDeleteToCart, mobilePhonesEntity: state.mobilePhonesEntity.mobilePhoneList);
                  }else{
                    return const LoadingGridviewBox();
                  }
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
