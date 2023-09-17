import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_shit_verstka/product_details_screen/cubit/RowOfButtonCubit.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/pageview_for_details/active_button_from_row.dart';
import 'package:udemy_shit_verstka/product_details_screen/widgets/pageview_for_details/inactive_button_from_row.dart';

class RowOfButtonTile extends StatelessWidget {
  RowOfButtonTile({super.key, required this.rowOfButtonCubit});

  final RowOfButtonCubit rowOfButtonCubit;
  firstButton() => rowOfButtonCubit.firstButton();
  secondButton() => rowOfButtonCubit.secondButton();
  thirdButton() => rowOfButtonCubit.thirdButton();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //TODO --------------------------------------------------------------------
        GestureDetector(
          onTap: (){
            firstButton();
            },
          child: BlocBuilder<RowOfButtonCubit, int>(
            bloc: rowOfButtonCubit,
            builder: (context, state) {
              if(state==0) {
                return const ActiveButtonFromRow(title: 'Shop',);
              }else{
                return const InactiveButtonFromRow(title: 'Shop');
              }
            },
          ),
        ),
        //TODO --------------------------------------------------------------------
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
        //TODO --------------------------------------------------------------------
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
        //TODO --------------------------------------------------------------------
      ],
    );
  }
}
