part of 'get_smartphone_grid_first_screen_bloc.dart';

abstract class GetSmartphoneGridFirstScreenState extends Equatable {
  const GetSmartphoneGridFirstScreenState();
}

class EmptyState extends GetSmartphoneGridFirstScreenState {
  @override
  List<Object> get props => [];
}

class LoadingState extends GetSmartphoneGridFirstScreenState {
  @override
  List<Object> get props => [];
}

class LoadedState extends GetSmartphoneGridFirstScreenState {
  const LoadedState(this.mobilePhonesEntity);
  final MobilePhonesEntity mobilePhonesEntity;
  @override
  List<Object> get props => [mobilePhonesEntity];
}

class ErrorState extends GetSmartphoneGridFirstScreenState {
  @override
  List<Object> get props => [];
}