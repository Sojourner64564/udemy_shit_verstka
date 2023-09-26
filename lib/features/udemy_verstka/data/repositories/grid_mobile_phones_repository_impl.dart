import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/core/error/failures.dart';
import 'package:udemy_shit_verstka/core/network/network_info.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/repositories/mobile_phones_repository.dart';

import '../../domain/entities/mobile_phones_entity.dart';
import '../data_sources/grid_mobile_phones_remote_data_sources.dart';

@LazySingleton(as: GridMobilePhonesRepository)
class GridMobilePhonesRepositoryImpl extends GridMobilePhonesRepository{
  GridMobilePhonesRepositoryImpl(this.mobilePhoneRemoteDataSources, this.networkInfo);

  final GridMobilePhonesRemoteDataSources mobilePhoneRemoteDataSources;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, MobilePhonesEntity>> getMobilePhones() async {
    //if(await networkInfo.isConnected){
    if(true){
      final remotePhones = await mobilePhoneRemoteDataSources.getMobilePhones();
      return Right(remotePhones);
    }else{
      return Left(ServerFailure());
    }
  }

}