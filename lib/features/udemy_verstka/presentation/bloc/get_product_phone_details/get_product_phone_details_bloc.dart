import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_product_phone_details_event.dart';
part 'get_product_phone_details_state.dart';

class GetProductPhoneDetailsBloc extends Bloc<GetProductPhoneDetailsEvent, GetProductPhoneDetailsState> {
  GetProductPhoneDetailsBloc() : super(GetProductPhoneDetailsInitial()) {
    on<GetProductPhoneDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
