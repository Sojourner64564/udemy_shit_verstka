import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/core/error/failures.dart';
import 'package:udemy_shit_verstka/core/usecases/params/no_params.dart';
import 'package:udemy_shit_verstka/core/usecases/use_case_mobile_phone.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_entity.dart';

import '../repositories/mobile_phones_repository.dart';

@lazySingleton
class GetMobilePhones extends UseCaseMobilePhone<MobilePhonesEntity, NoParams>{
GetMobilePhones(this.mobilePhoneRepository);

final GridMobilePhonesRepository mobilePhoneRepository;

  @override
  Future<Either<Failure, MobilePhonesEntity>> call(NoParams params) async{
    return await mobilePhoneRepository.getMobilePhones();
  }

}