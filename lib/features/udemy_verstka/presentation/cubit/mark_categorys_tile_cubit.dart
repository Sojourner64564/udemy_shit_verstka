import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/for_example/category.dart';

part 'mark_categorys_tile_state.dart';

@lazySingleton
class MarkCategoriesTileCubit extends Cubit<MarkCategoriesTileState> {
  MarkCategoriesTileCubit() : super(MarkCategoriesTileInitial());
  final List<Category> categories = [
    Category(
      icon: Icons.smartphone_outlined,
      title: 'Phones',
    ),
    Category(
      icon: Icons.computer,
      title: 'Computer',
    ),
    Category(
      icon: Icons.health_and_safety_outlined,
      title: 'Health',
    ),
    Category(
      icon: Icons.menu_book,
      title: 'Books',
    ),
    Category(
      icon: Icons.photo_camera,
      title: 'Cameras',
    ),
    Category(
      icon: Icons.build,
      title: 'Wrenches',
    ),
    Category(
      icon: Icons.rocket_launch,
      title: 'Rockets',
    ),
  ];

  void tapMethod(int index){
    emit(MarkCategoriesTileLoading());
    List<Color> listColors = [];
    List<Color> listIconColors = [];

    for(int i=0;i<=categories.length;i++){
      if(i==index){
        listColors.add(MyColors.orangeColor);
        listIconColors.add(MyColors.whiteColor);
      }
      if(i!=index){
        listColors.add(MyColors.whiteColor);
        listIconColors.add(MyColors.greyColor);
      }
    }
    emit(MarkCategoriesTileLoaded(categories, listColors,listIconColors));
  }

  void initButtons(){
    emit(MarkCategoriesTileLoading());
    List<Color> buttonListColors = List.filled(categories.length, MyColors.whiteColor);
    List<Color> iconListColors = List.filled(categories.length, MyColors.greyColor);

    emit(MarkCategoriesTileLoaded(categories, buttonListColors, iconListColors));
  }

}
