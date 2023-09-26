import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/core/error/failures.dart';
import 'package:udemy_shit_verstka/core/network/network_info.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/data/data_sources/mobile_phones_details_remote_data_sources/mobile_phones_details_remote_data_source.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_details_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/repositories/mobile_phones_details_repository/mobile_phones_details_repository.dart';

@LazySingleton(as: MobilePhonesDetailsRepository)
class MobilePhonesDetailsRepositoryImpl implements MobilePhonesDetailsRepository{
  MobilePhonesDetailsRepositoryImpl(this.mobilePhonesDetailsRemoteDataSource, this.networkInfo);

  final MobilePhonesDetailsRemoteDataSource mobilePhonesDetailsRemoteDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, MobilePhoneDetailsEntity>> getPhoneDetails(String id) async{
    //if(await networkInfo.isConnected){
      if(true){
      final remoteDetails = await mobilePhonesDetailsRemoteDataSource.getMobileDetails(id);
      return Right(remoteDetails);
    }else{
      return Left(ServerFailure());
    }
  }

}