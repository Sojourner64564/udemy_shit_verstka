import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_shit_verstka/core/injectable/injectable.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/cubit/mark_categorys_tile_cubit.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/example_categorys.dart';

class CategoriesTile extends StatefulWidget {
  const CategoriesTile({super.key});

  @override
  State<CategoriesTile> createState() => _CategoriesTileState();
}

class _CategoriesTileState extends State<CategoriesTile> {
  final markCategoriesTileCubit = getIt<MarkCategoriesTileCubit>();
  @override
  void initState() {
    markCategoriesTileCubit.initButtons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 90,
      child: BlocBuilder<MarkCategoriesTileCubit, MarkCategoriesTileState>(
        bloc: markCategoriesTileCubit,
        builder: (context, state) {
          if(state is MarkCategoriesTileInitial){
            return const Center(child: Text('Initial'));
          }
          if(state is MarkCategoriesTileLoading){
            return const Center(child: Text('Loading'));
          }
          if(state is MarkCategoriesTileLoaded){
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: state.categories.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    markCategoriesTileCubit.tapMethod(index);
                  },
                    child: ExampleCategories(
                        category: state.categories[index],
                        buttonColor: state.buttonColors[index],
                        iconColor: state.iconColors[index],
                    ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 20);
              },
            );
          }else{
            return const Center(child: Text('Error'));
          }




        },
      ),
    );
  }
}
