import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/first_screen/for_example/mobile_phone_entity.dart';
import 'package:udemy_shit_verstka/product_details_screen/cubit/row_of_button_cubit.dart';
import 'package:udemy_shit_verstka/product_details_screen/cubit/animation_of_row_buttons_cubit.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/pageview_for_details/pages_of_pageview/first_page_for_pageview.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/pageview_for_details/pages_of_pageview/second_page_for_pageview.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/pageview_for_details/pages_of_pageview/third_page_for_pageview.dart';

class PageviewTileDeviceCharacteristic extends StatefulWidget{
   const PageviewTileDeviceCharacteristic({super.key, required this.rowOfButtonCubit, required this.animationOfRowButton, required this.mobilePhone});
   final RowOfButtonCubit rowOfButtonCubit;
   final AnimationOfRowButton animationOfRowButton;
   final MobilePhone mobilePhone;

  @override
  State<PageviewTileDeviceCharacteristic> createState() => _PageviewTileDeviceCharacteristicState();
}

class _PageviewTileDeviceCharacteristicState extends State<PageviewTileDeviceCharacteristic> {
   @override
  void initState() {
     widget.rowOfButtonCubit.pageController.addListener(() {
      final double? page = widget.rowOfButtonCubit.pageController.page;
      widget.animationOfRowButton.listenerForButtonAnimation(page);
      widget.rowOfButtonCubit.listenerForPageView(page);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: PageView(
        controller: widget.rowOfButtonCubit.pageController,
        children:   [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: FirstPageForPageview(mobilePhone: widget.mobilePhone,),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SecondPageForPageview(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: ThirdPageForPageview(),
          ),
        ],
      ),
    );
  }
}
