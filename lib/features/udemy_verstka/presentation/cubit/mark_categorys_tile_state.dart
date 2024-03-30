part of 'mark_categorys_tile_cubit.dart';

@immutable
abstract class MarkCategoriesTileState {}

class MarkCategoriesTileInitial extends MarkCategoriesTileState {}
class MarkCategoriesTileLoading extends MarkCategoriesTileState {}
class MarkCategoriesTileLoaded extends MarkCategoriesTileState {
  final List<Category> categories;
  final List<Color> buttonColors;
  final List<Color> iconColors;


  MarkCategoriesTileLoaded(this.categories, this.buttonColors, this.iconColors);
}

