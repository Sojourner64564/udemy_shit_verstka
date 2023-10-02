part of 'total_number_bloc.dart';

abstract class TotalNumberEvent extends Equatable {
  const TotalNumberEvent();
}

class TotalNumberGetList extends TotalNumberEvent{
  const TotalNumberGetList(this.totalMoneyList);

  final List<dynamic> totalMoneyList;

  @override
  List<Object?> get props => [totalMoneyList];

}
