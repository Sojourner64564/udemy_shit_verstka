part of 'get_product_phone_details_bloc.dart';

abstract class GetProductPhoneDetailsEvent extends Equatable {
  const GetProductPhoneDetailsEvent();
}

class GetPhoneDetailsEvent extends GetProductPhoneDetailsEvent {
  const GetPhoneDetailsEvent(this.id);

  final String id;

  @override
  List<Object?> get props => [id];
}
