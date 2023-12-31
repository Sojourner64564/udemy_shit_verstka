import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_details_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/pageview_for_details/pages_of_pageview/first_page_for_pageview.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/pageview_for_details/pages_of_pageview/second_page_for_pageview.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/pageview_for_details/pages_of_pageview/third_page_for_pageview.dart';


import '../../../first_screen/for_example/mobile_phone.dart';
import '../../cubit/animation_of_row_buttons_cubit.dart';
import '../../cubit/row_of_button_cubit.dart';

class PageviewTileDeviceCharacteristic extends StatefulWidget{
   const PageviewTileDeviceCharacteristic({super.key, required this.rowOfButtonCubit, required this.animationOfRowButton, required this.mobilePhoneDetailsEntity});
   final RowOfButtonCubit rowOfButtonCubit;
   final AnimationOfRowButton animationOfRowButton;
   final MobilePhoneDetailsEntity mobilePhoneDetailsEntity;

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
            child: FirstPageForPageview(mobilePhoneDetailsEntity: widget.mobilePhoneDetailsEntity,),
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
