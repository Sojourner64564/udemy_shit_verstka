import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/core/usecases/params/no_params.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/usecases/get_mobile_phone.dart';

part 'get_smartphone_grid_first_screen_event.dart';
part 'get_smartphone_grid_first_screen_state.dart';

@lazySingleton
class GetSmartphoneGridFirstScreenBloc extends Bloc<GetSmartphoneGridFirstScreenEvent, GetSmartphoneGridFirstScreenState> {
  GetSmartphoneGridFirstScreenBloc(this.getMobilePhones, ) : super(EmptyState()) {
    on<GetGridSmartphonesEvent>(_onGetGridSmartphones);
  }

  final GetMobilePhones getMobilePhones;

void _onGetGridSmartphones(GetGridSmartphonesEvent event, Emitter<GetSmartphoneGridFirstScreenState> state) async{
  emit(LoadingState());
  final failureOrMobilePhonesEither = await getMobilePhones.call(NoParams());
  final failureOrMobilePhones = failureOrMobilePhonesEither.fold((failure) => ErrorState(), (mobilePhones) => LoadedState(mobilePhones));
  if(failureOrMobilePhones is ErrorState){
    emit(failureOrMobilePhones);
    throw UnimplementedError();
  }
  emit(failureOrMobilePhones);
}




}
