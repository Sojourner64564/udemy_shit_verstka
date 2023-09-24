import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/widgets/modal_bottom_bar/modal_bottom_bar.dart';

class SearchBarTile extends StatelessWidget{
  const SearchBarTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: SearchBar(
              hintText: 'Search',
                hintStyle: MaterialStateProperty.all(
                  TextStyles.greyTextStyle
                ),
                elevation: MaterialStateProperty.all(0),
              leading: const Icon(Icons.search,
              color: MyColors.orangeColor,
                size: Sizes.iconSearchButtonSize,

              ),
            ),
          ),
          const SizedBox(width: 15),
          Material(
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              splashColor: MyColors.orangeColor,
              onTap: (){
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context){
                      return ModalBottomBar();
                    });
              },
              child: Ink(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: MyColors.orangeColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child:  const Icon(Icons.dashboard_customize,
                color: MyColors.whiteColor,
                  size: Sizes.iconSearchButtonSize,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
