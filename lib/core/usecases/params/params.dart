import 'package:equatable/equatable.dart';

class Params extends Equatable{
  const Params({required this.id});
  final String id;

  @override
  List<Object?> get props =>  [id];
}