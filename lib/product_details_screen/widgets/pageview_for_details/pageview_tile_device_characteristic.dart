import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/product_details_screen/cubit/RowOfButtonCubit.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/pageview_for_details/pages_of_pageview/first_page_for_pageview.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/pageview_for_details/pages_of_pageview/second_page_for_pageview.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/pageview_for_details/pages_of_pageview/third_page_for_pageview.dart';

class PageviewTileDeviceCharacteristic extends StatefulWidget{
   PageviewTileDeviceCharacteristic({super.key, required this.rowOfButtonCubit});

   final RowOfButtonCubit rowOfButtonCubit;

  @override
  State<PageviewTileDeviceCharacteristic> createState() => _PageviewTileDeviceCharacteristicState();
}

class _PageviewTileDeviceCharacteristicState extends State<PageviewTileDeviceCharacteristic> {
   @override
  void initState() {
     widget.rowOfButtonCubit.pageController.addListener(() {
      final double? page = widget.rowOfButtonCubit.pageController.page;
      widget.rowOfButtonCubit.listenerForPageView(page);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: PageView(
        controller: widget.rowOfButtonCubit.pageController,
        children:  const [
          FirstPageForPageview(),
          SecondPageForPageview(),
          ThirdPageForPageview(),
        ],
      ),
    );
  }
}
