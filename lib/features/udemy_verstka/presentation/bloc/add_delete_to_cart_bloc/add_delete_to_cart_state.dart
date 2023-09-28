part of 'add_delete_to_cart_bloc.dart';

abstract class AddDeleteToCartState extends Equatable {
  const AddDeleteToCartState();
}

class AddDeleteEmptyState extends AddDeleteToCartState {
  @override
  List<Object> get props => [];
}
class AddDeleteLoadingState extends AddDeleteToCartState {
  @override
  List<Object> get props => [];
}
class AddDeleteLoadedState extends AddDeleteToCartState {
  const AddDeleteLoadedState(this.listAmount);

  final List<dynamic> listAmount;

  @override
  List<Object> get props => [];
}
class AddDeleteErrorState extends AddDeleteToCartState {
  @override
  List<Object> get props => [];
}