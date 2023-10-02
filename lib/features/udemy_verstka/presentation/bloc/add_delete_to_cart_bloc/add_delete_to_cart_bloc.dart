import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/core/injectable/injectable.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/bloc/get_products_in_cart_bloc/get_products_in_cart_bloc.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/bloc/get_smartphone_grid_first_screen_bloc/get_smartphone_grid_first_screen_bloc.dart';

part 'add_delete_to_cart_event.dart';
part 'add_delete_to_cart_state.dart';

@lazySingleton
class AddDeleteToCartBloc extends Bloc<AddDeleteToCartEvent, AddDeleteToCartState> {
  AddDeleteToCartBloc() : super(AddDeleteEmptyState()) {
    on<AddEvent>(_addEvent);
    on<DecreaseEvent>(_decreaseEvent);
    on<InitEvent>(_initEvent);
  }

  final GetProductsInCartBloc getProductsInCartBloc = getIt<GetProductsInCartBloc>();

  void _initEvent(InitEvent event, Emitter<AddDeleteToCartState> state) async{
    emit(AddDeleteLoadingState());
    final cartBox = await Hive.openBox('myBox');
    emit(AddDeleteLoadedState(cartBox.values.toList()));
  }

  void _addEvent(AddEvent event, Emitter<AddDeleteToCartState> state) async{
    emit(AddDeleteLoadingState());
    final cartBox = await Hive.openBox('myBox');
    final id = event.id;
    final value = cartBox.get(id);
    if(value!=null){
      cartBox.put(id, value+1);
    }else{
      cartBox.put(id, 1);
    }

    getProductsInCartBloc.add(const UpdateMoneySumEvent());
    emit(AddDeleteLoadedState(cartBox.values.toList()));
    print(cartBox.toMap());
  }

  void _decreaseEvent(DecreaseEvent event, Emitter<AddDeleteToCartState> state) async{
    emit(AddDeleteLoadingState()); //без него не работает
    final cartBox = await Hive.openBox('myBox');
    final id = event.id;
    final value = cartBox.get(id);
    if(value!=null && value!=0){
      cartBox.put(id, value-1);
      final secondValue = cartBox.get(id);
      if(secondValue==0){
        cartBox.delete(id);
        getProductsInCartBloc.add(UpdateCartEvent(event.mobilePhoneEntity));
        emit(AddDeleteLoadedState(cartBox.values.toList()));
      }
    }
    getProductsInCartBloc.add(const UpdateMoneySumEvent());
    emit(AddDeleteLoadedState(cartBox.values.toList()));
    print(cartBox.toMap());
  }

}
