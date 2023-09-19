import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/first_screen/for_example/mobile_phone.dart';
import 'package:udemy_shit_verstka/first_screen/gridview_box.dart';
import 'package:udemy_shit_verstka/product_details_screen/product_details_screen.dart';

class GridviewBestSeller extends StatelessWidget {
  GridviewBestSeller({super.key});

  final List<MobilePhone> mobilePhones = [
    MobilePhone(
      newCost: '1,213',
      oldCost: '1337',
      productName: 'Samsung Galaxy S23',
      imgAssetLink: 'assets/images/s23ultra.jpg',
      onTap: () => print('Samsung Galaxy S23'),
      cpu: 'Snapdragon 8 Gen 2',
      camera: '108',
      ram: '12',
      minMemory: '256',
      maxMemory: '1024',
      score: 5
    ),
    MobilePhone(
      newCost: '300',
      oldCost: '445',
      productName: 'Honor 8 Lite',
      imgAssetLink: 'assets/images/honor8lite.jpg',
      onTap: () => print('Honor 8 Lite'),
      cpu: 'HiSilicon Kirin 655',
      camera: '12',
      ram: '4',
      minMemory: '16',
      maxMemory: '64',
      score: 4,
    ),
    MobilePhone(
      newCost: '230',
      oldCost: '300',
      productName: 'Samsung Galaxy Note 8',
      imgAssetLink: 'assets/images/note8.jpg',
      onTap: () => print('Samsung Galaxy Note 8'),
      cpu: 'Snapdragon 835',
      camera: '12',
      ram: '6',
      minMemory: '128',
      maxMemory: '256',
      score: 4,
    ),
    MobilePhone(
      newCost: '720',
      oldCost: '800',
      productName: 'Xiaomi Mi 9',
      imgAssetLink: 'assets/images/xiaomimi9.jpg',
      onTap: () => print('Xiaomi Mi 9'),
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
        itemCount: mobilePhones.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.80,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductDetailsScreen(
                          mobilePhone: mobilePhones[index],
                        )),
              );
            },
            child: GridviewBox(
              mobilePhone: mobilePhones[index],
            ),
          );
        });
  }
}
