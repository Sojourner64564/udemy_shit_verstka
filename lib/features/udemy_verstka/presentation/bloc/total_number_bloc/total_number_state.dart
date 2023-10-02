part of 'total_number_bloc.dart';

abstract class TotalNumberState extends Equatable {
  const TotalNumberState();
}

class TotalNumberInitial extends TotalNumberState {
  @override
  List<Object> get props => [];
}
class TotalNumberLoading extends TotalNumberState {
  @override
  List<Object> get props => [];
}
class TotalNumberLoaded extends TotalNumberState {
  const TotalNumberLoaded(this.totalAmount);

  final int totalAmount;

  @override
  List<Object> get props => [totalAmount];
}
class TotalNumberError extends TotalNumberState {
  @override
  List<Object> get props => [];
}
