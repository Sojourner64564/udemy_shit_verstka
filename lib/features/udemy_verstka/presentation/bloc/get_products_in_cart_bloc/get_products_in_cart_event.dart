part of 'get_products_in_cart_bloc.dart';

abstract class GetProductsInCartEvent extends Equatable {
  const GetProductsInCartEvent();
}

class GetCartEvent extends GetProductsInCartEvent {

  @override
  List<Object?> get props => [];
}

class UpdateCartEvent extends GetProductsInCartEvent {
  const UpdateCartEvent(this.mobilePhoneEntity);

  final MobilePhoneEntity mobilePhoneEntity;

  @override
  List<Object?> get props => [mobilePhoneEntity];
}

class UpdateMoneySumEvent extends GetProductsInCartEvent {
  const UpdateMoneySumEvent();

  @override
  List<Object?> get props => [];
}