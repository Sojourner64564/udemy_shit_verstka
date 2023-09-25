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
  LoadingGridviewBestSeller({super.key});

  //final List<MobilePhoneEntity> mobilePhonesEntity;
  final List<MobilePhone> mobilePhones = [
    MobilePhone(
        id: '0',
        newCost: '1,213',
        oldCost: '1337',
        productName: 'Samsung Galaxy S23',
        imgAssetLink: 'assets/images/s23ultra.jpg',
        cpu: 'Snapdragon 8 Gen 2',
        camera: '108',
        ram: '12',
        minMemory: '256',
        maxMemory: '1024',
        score: 5
    ),
    MobilePhone(
      id: '1',
      newCost: '300',
      oldCost: '445',
      productName: 'Honor 8 Lite',
      imgAssetLink: 'assets/images/honor8lite.jpg',
      cpu: 'HiSilicon Kirin 655',
      camera: '12',
      ram: '4',
      minMemory: '16',
      maxMemory: '64',
      score: 4,
    ),
    MobilePhone(
      id: '2',
      newCost: '230',
      oldCost: '300',
      productName: 'Samsung Galaxy Note 8',
      imgAssetLink: 'assets/images/note8.jpg',
      cpu: 'Snapdragon 835',
      camera: '12',
      ram: '6',
      minMemory: '128',
      maxMemory: '256',
      score: 4,
    ),
    MobilePhone(
      id: '3',
      newCost: '720',
      oldCost: '800',
      productName: 'Xiaomi Mi 9',
      imgAssetLink: 'assets/images/xiaomimi9.jpg',
      cpu: 'Snapdragon 855',
      camera: '48',
      ram: '8',
      minMemory: '128',
      maxMemory: '256',
      score: 3,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4, //mobilePhones.length,
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
              child: const LoadingGridviewBox(),
            ),
          );
        });
  }
}
