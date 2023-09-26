import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/core/error/failures.dart';
import 'package:udemy_shit_verstka/core/network/network_info.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/data/data_sources/product_cart_remote_data_source/product_cart_remote_data_source.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/repositories/cart_product_repository/cart_product_repository.dart';

@LazySingleton(as: CartProductRepository)
class CartProductrepositoryImpl implements CartProductRepository{
  CartProductrepositoryImpl(this.productCartRemoteDataSource, this.networkInfo);

  final ProductCartRemoteDataSource productCartRemoteDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, MobilePhoneEntity>> getProductAtCart(String id) async{
    if(true){
      final remoteCart = await productCartRemoteDataSource.getProductAtCart(id);
      return Right(remoteCart);
    }else{
      return Left(ServerFailure());
    }
  }

}