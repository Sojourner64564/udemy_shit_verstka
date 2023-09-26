part of 'get_products_in_cart_bloc.dart';

abstract class GetProductsInCartState extends Equatable {
  const GetProductsInCartState();
}

class EmptyState extends GetProductsInCartState {
  @override
  List<Object> get props => [];
}

class LoadingState extends GetProductsInCartState {
  @override
  List<Object> get props => [];
}

class LoadedState extends GetProductsInCartState {
  @override
  List<Object> get props => [];
}

class ErrorState extends GetProductsInCartState {
  @override
  List<Object> get props => [];
}