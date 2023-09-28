part of 'add_delete_to_cart_bloc.dart';

abstract class AddDeleteToCartEvent extends Equatable {
  const AddDeleteToCartEvent();
}

class AddEvent extends AddDeleteToCartEvent{
  const AddEvent(this.id);

  final String id;

  @override
  List<Object?> get props => [id];
}

class DecreaseEvent extends AddDeleteToCartEvent{
  const DecreaseEvent(this.id, this.mobilePhoneEntity);

  final String id;
  final MobilePhoneEntity mobilePhoneEntity;

  @override
  List<Object?> get props => [id,mobilePhoneEntity];
}

class InitEvent extends AddDeleteToCartEvent{
  const InitEvent();

  @override
  List<Object?> get props => [];
}