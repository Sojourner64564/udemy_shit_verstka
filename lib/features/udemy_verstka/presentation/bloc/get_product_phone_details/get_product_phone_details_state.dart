part of 'get_product_phone_details_bloc.dart';

abstract class GetProductPhoneDetailsState extends Equatable {
  const GetProductPhoneDetailsState();
}

class EmptyState extends GetProductPhoneDetailsState {
  @override
  List<Object> get props => [];
}

class LoadingState extends GetProductPhoneDetailsState {
  @override
  List<Object> get props => [];
}

class LoadedState extends GetProductPhoneDetailsState {
  const LoadedState(this.mobilePhoneDetailsEntity);

  final MobilePhoneDetailsEntity mobilePhoneDetailsEntity;

  @override
  List<Object> get props => [];
}

class ErrorState extends GetProductPhoneDetailsState {
  @override
  List<Object> get props => [];
}
