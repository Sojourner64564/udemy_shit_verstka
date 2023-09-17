import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/product_details_screen/cubit/RowOfButtonCubit.dart';
import 'package:udemy_shit_verstka/product_details_screen/cubit/animation_of_row_buttons_cubit.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/pageview_for_details/pages_of_pageview/first_page_for_pageview.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/pageview_for_details/pages_of_pageview/second_page_for_pageview.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/pageview_for_details/pages_of_pageview/third_page_for_pageview.dart';

class PageviewTileDeviceCharacteristic extends StatefulWidget{
   const PageviewTileDeviceCharacteristic({super.key, required this.rowOfButtonCubit, required this.animationOfRowButton});

   final RowOfButtonCubit rowOfButtonCubit;
   final AnimationOfRowButton animationOfRowButton;

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
      height: 61,
      width: double.infinity,
      child: PageView(
        controller: widget.rowOfButtonCubit.pageController,
        children:  const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: FirstPageForPageview(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SecondPageForPageview(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: ThirdPageForPageview(),
          ),
        ],
      ),
    );
  }
}
