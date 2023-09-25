import 'package:dartz/dartz.dart';
import 'package:udemy_shit_verstka/core/error/failures.dart';
import 'package:udemy_shit_verstka/core/network/network_info.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/repositories/mobile_phone_repository.dart';

import '../../domain/entities/mobile_phones_entity.dart';
import '../data_sources/mobile_phone_remote_data_sources.dart';

class MobilePhonesRepositoryImpl extends MobilePhonesRepository{
  MobilePhonesRepositoryImpl(this.mobilePhoneRemoteDataSources, this.networkInfo);

  final MobilePhonesRemoteDataSources mobilePhoneRemoteDataSources;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, MobilePhonesEntity>> getMobilePhones() async {
    if(await networkInfo.isConnected){
      final remotePhones = await mobilePhoneRemoteDataSources.getMobilePhones();
      return Right(remotePhones);
    }else{
      return Left(ServerFailure());
    }
  }

}