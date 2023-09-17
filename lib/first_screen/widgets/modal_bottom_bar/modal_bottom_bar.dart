import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/first_screen/widgets/modal_bottom_bar/dropdown_menu_brand.dart';
import 'package:udemy_shit_verstka/first_screen/widgets/modal_bottom_bar/dropdown_menu_price.dart';
import 'package:udemy_shit_verstka/first_screen/widgets/modal_bottom_bar/dropdown_menu_size.dart';

class ModalBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height/2);
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height/2,
      decoration: const BoxDecoration(
        color: MyColors.whiteColor,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height:15,
                child: Divider(thickness: 5,indent: 50, endIndent: 50)),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/2-15, //TODO -------------------------380
              child: ListView(
                children: [
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: MyColors.deepBlueColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(Icons.close,
                            color: MyColors.whiteColor,
                          ),
                        ),
                      ),
                      const Text('Filter Options',
                          style: TextStyles.forFilterTextTwo),
                      Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                          color: MyColors.orangeColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child:  Text('Done',
                            style: TextStyles.forFilterText,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('Brand', style: TextStyles.forFilterTextTwo),
                  DroppdownMenuBrand(),
                  const Text('Price', style: TextStyles.forFilterTextTwo),
                  DroppdownMenuPrice(),
                  const Text('Size', style: TextStyles.forFilterTextTwo),
                  DroppdownMenuSize(),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}