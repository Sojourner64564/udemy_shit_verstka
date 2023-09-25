import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:udemy_shit_verstka/core/usecases/params/no_params.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/usecases/get_mobile_phone.dart';

part 'get_smartphone_grid_first_screen_event.dart';
part 'get_smartphone_grid_first_screen_state.dart';

class GetSmartphoneGridFirstScreenBloc extends Bloc<GetSmartphoneGridFirstScreenEvent, GetSmartphoneGridFirstScreenState> {
  GetSmartphoneGridFirstScreenBloc(this.getMobilePhone, ) : super(EmptyState()) {
    on<GetGridSmartphonesEvent>(_onGetGridSmartphones);
  }

  final GetMobilePhone getMobilePhone;

void _onGetGridSmartphones(GetGridSmartphonesEvent event, Emitter<GetSmartphoneGridFirstScreenState> state) async{
  emit(LoadingState());
  final failureOrGridSmartphones = getMobilePhone.call(NoParams());


}




}
