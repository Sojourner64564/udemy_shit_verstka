import 'package:dartz/dartz.dart';
import 'package:udemy_shit_verstka/core/error/failures.dart';
import 'package:udemy_shit_verstka/core/usecases/params/no_params.dart';
import 'package:udemy_shit_verstka/core/usecases/use_case_mobile_phone.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';

import '../repositories/mobile_phone_repository.dart';

class GetMobilePhone extends UseCaseMobilePhone<MobilePhoneEntity, NoParams>{
GetMobilePhone(this.mobilePhoneRepository);

final MobilePhoneRepository mobilePhoneRepository;

  @override
  Future<Either<Failure, MobilePhoneEntity>> call(NoParams params) async{
    return await mobilePhoneRepository.getMobilePhone();
  }

}