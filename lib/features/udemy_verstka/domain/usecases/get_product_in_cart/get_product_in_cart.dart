import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/core/error/failures.dart';
import 'package:udemy_shit_verstka/core/usecases/params/params.dart';
import 'package:udemy_shit_verstka/core/usecases/use_case_mobile_phone.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/repositories/cart_product_repository/cart_product_repository.dart';

@lazySingleton
class GetProductInCart implements UseCaseMobilePhone<MobilePhoneEntity, Params>{
  GetProductInCart(this.cartProductRepository);

  final CartProductRepository cartProductRepository;

  @override
  Future<Either<Failure, MobilePhoneEntity>> call(Params params) async{
    return await cartProductRepository.getProductAtCart(params.id);
  }
}