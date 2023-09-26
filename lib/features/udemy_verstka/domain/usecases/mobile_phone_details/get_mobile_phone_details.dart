import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/core/error/failures.dart';
import 'package:udemy_shit_verstka/core/usecases/params/no_params.dart';
import 'package:udemy_shit_verstka/core/usecases/params/params.dart';
import 'package:udemy_shit_verstka/core/usecases/use_case_mobile_phone.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_details_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/repositories/mobile_phones_details_repository/mobile_phones_details_repository.dart';

@lazySingleton
class GetMobilePhoneDetails implements UseCaseMobilePhone<MobilePhoneDetailsEntity, Params>{
  GetMobilePhoneDetails(this.mobilePhonesDetailsRepository);

  final MobilePhonesDetailsRepository mobilePhonesDetailsRepository;

  @override
  Future<Either<Failure, MobilePhoneDetailsEntity>> call(Params params) async{
    return await mobilePhonesDetailsRepository.getPhoneDetails(params.id);
  }

}