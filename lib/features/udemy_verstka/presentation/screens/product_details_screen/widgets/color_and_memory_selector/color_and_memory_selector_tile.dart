import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/color_and_memory_selector/color_buttons/active_color_button.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/color_and_memory_selector/color_buttons/inactive_color_button.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/color_and_memory_selector/memory_buttons/active_memory_button.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/product_details_screen/widgets/color_and_memory_selector/memory_buttons/inactive_memory_button.dart';
import '../../../first_screen/for_example/mobile_phone.dart';
import '../../cubit/color_selector_cubit.dart';
import '../../cubit/memory_selector_cubit.dart';


class ColorAndMemorySelectorTile extends StatelessWidget {
  ColorAndMemorySelectorTile({super.key, required this.mobilePhone});

  final MobilePhone mobilePhone;

  final MemorySelectorCubit memorySelectorCubit = MemorySelectorCubit();
  final ColorSelectorCubit colorSelectorCubit = ColorSelectorCubit();

  firstMemoryButton() => memorySelectorCubit.firstButton();
  secondMemoryButton() => memorySelectorCubit.secondButton();
  firstColorButton() => colorSelectorCubit.firstButton();
  secondColorButton() => colorSelectorCubit.secondButton();

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      GestureDetector(
        onTap: () {
          firstColorButton();
        },
        child: BlocBuilder<ColorSelectorCubit, int>(
          bloc: colorSelectorCubit,
          builder: (context, state) {
            if(state==0){
              return const ActiveColorButton(color: Color.fromRGBO(119, 45, 4, 1));
            }else{
              return const InactiveColorButton(color: Color.fromRGBO(119, 45, 4, 1));
            }
          },
        ),
      ),
      const SizedBox(width: 10),
      GestureDetector(
          onTap: () {
            secondColorButton();
          },
          child: BlocBuilder<ColorSelectorCubit, int>(
            bloc: colorSelectorCubit,
            builder: (context, state) {
              if(state==1){
                return const ActiveColorButton(color: Color.fromRGBO(1, 1, 53, 1));
              }else{
                return const InactiveColorButton(color: Color.fromRGBO(1, 1, 53, 1));
              }
            },
          ),
      ),
      const Expanded(child: SizedBox()),
      GestureDetector(
        onTap: () {
          firstMemoryButton();
        },
        child: BlocBuilder<MemorySelectorCubit, int>(
          bloc: memorySelectorCubit,
          builder: (context, state) {
            if (state == 0) {
              return ActiveMemoryButton(memory: mobilePhone.minMemory,);
            } else {
              return InactiveMemoryButton(memory: mobilePhone.minMemory,);
            }
          },
        ),
      ),
      const SizedBox(width: 10),
      GestureDetector(
        onTap: () {
          secondMemoryButton();
        },
        child: BlocBuilder<MemorySelectorCubit, int>(
          bloc: memorySelectorCubit,
          builder: (context, state) {
            if (state == 1) {
              return ActiveMemoryButton(memory: mobilePhone.maxMemory,);
            } else {
              return InactiveMemoryButton(memory: mobilePhone.maxMemory,);
            }
          },
        ),
      ),
    ],
    );
  }
}
