import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/pageview_for_details/active_button_from_row.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/pageview_for_details/inactive_button_from_row.dart';

import '../cubit/animation_of_row_buttons_cubit.dart';
import '../cubit/row_of_button_cubit.dart';


class RowOfButtonTile extends StatelessWidget {
  const RowOfButtonTile({super.key, required this.rowOfButtonCubit, required this.animationOfRowButton});

  final AnimationOfRowButton animationOfRowButton;
  final RowOfButtonCubit rowOfButtonCubit;
  firstButton() => rowOfButtonCubit.firstButton();
  secondButton() => rowOfButtonCubit.secondButton();
  thirdButton() => rowOfButtonCubit.thirdButton();

  @override
  Widget build(BuildContext context) {
    final bruh = (MediaQuery.of(context).size.width-60-(MediaQuery.of(context).size.width/4.1))/2; //соотношения и тд
    return BlocBuilder<AnimationOfRowButton, double>(
      bloc: animationOfRowButton,
      builder: (context, state) {
    return Stack(
      children: [
        Positioned(
          left: state*bruh,
            child:Container(
              height: 35,
              width: MediaQuery.of(context).size.width/4.1,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 2, color: MyColors.orangeColor),
                ),
              ),
            ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                firstButton();
                },
              child: BlocBuilder<RowOfButtonCubit, int>(
                bloc: rowOfButtonCubit,
                builder: (context, state) {
                  if(state==0) {
                    return const ActiveButtonFromRow(title: 'Shop');
                  }else{
                    return const InactiveButtonFromRow(title: 'Shop');
                  }
                },
              ),
            ),
            GestureDetector(
              onTap: (){
                secondButton();
              },
              child: BlocBuilder<RowOfButtonCubit, int>(
                bloc: rowOfButtonCubit,
                builder: (context, state) {
                  if(state==1) {
                    return const ActiveButtonFromRow(title: 'Details',);
                  }else{
                    return const InactiveButtonFromRow(title: 'Details');
                  }
                },
              ),
            ),
            GestureDetector(
              onTap: (){
                thirdButton();
                },
              child: BlocBuilder<RowOfButtonCubit, int>(
                bloc: rowOfButtonCubit,
                builder: (context, state) {
                  if(state==2) {
                    return const ActiveButtonFromRow(title: 'Features',);
                  }else{
                    return const InactiveButtonFromRow(title: 'Features');
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  },
);
  }
}
