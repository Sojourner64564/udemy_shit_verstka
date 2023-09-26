import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/core/usecases/params/params.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_details_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/usecases/mobile_phone_details/get_mobile_phone_details.dart';

part 'get_product_phone_details_event.dart';
part 'get_product_phone_details_state.dart';

@lazySingleton
class GetProductPhoneDetailsBloc extends Bloc<GetProductPhoneDetailsEvent, GetProductPhoneDetailsState> {
  GetProductPhoneDetailsBloc(this.getMobilePhoneDetails) : super(EmptyState()) {
    on<GetPhoneDetailsEvent>(_getPhoneDetailsEvent);
  }

  final GetMobilePhoneDetails getMobilePhoneDetails;

  void _getPhoneDetailsEvent(GetPhoneDetailsEvent event, Emitter<GetProductPhoneDetailsState> state) async{
    emit(LoadingState());
    final failureOrDetailsEither = await getMobilePhoneDetails.call(Params(id: event.id));
    final failureOrDetails = failureOrDetailsEither.fold((l) => ErrorState(), (mobileDetails) => LoadedState(mobileDetails));
    emit(failureOrDetails);
  }




}
