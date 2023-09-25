// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i3;

import '../../features/udemy_verstka/data/data_sources/mobile_phone_remote_data_sources.dart'
    as _i4;
import '../../features/udemy_verstka/data/data_sources/mobile_phone_remote_data_sources_impl.dart'
    as _i5;
import '../../features/udemy_verstka/data/repositories/mobile_phone_repository_impl.dart'
    as _i7;
import '../../features/udemy_verstka/domain/repositories/mobile_phone_repository.dart'
    as _i6;
import '../../features/udemy_verstka/domain/usecases/get_mobile_phone.dart'
    as _i9;
import '../../features/udemy_verstka/presentation/bloc/get_smartphone_grid_first_screen_bloc/get_smartphone_grid_first_screen_bloc.dart'
    as _i10;
import '../network/network_info.dart' as _i8;
import 'injectable.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModuleConnectionChecke = _$RegisterModuleConnectionChecke();
  gh.factory<_i3.InternetConnectionChecker>(
      () => registerModuleConnectionChecke.internetConnectionChecker);
  gh.lazySingleton<_i4.MobilePhonesRemoteDataSources>(
      () => _i5.MobilePhonesRemoteDataSourcesImpl());
  gh.lazySingleton<_i6.MobilePhonesRepository>(
      () => _i7.MobilePhonesRepositoryImpl(
            get<_i4.MobilePhonesRemoteDataSources>(),
            get<_i8.NetworkInfo>(),
          ));
  gh.lazySingleton<_i9.GetMobilePhones>(
      () => _i9.GetMobilePhones(get<_i6.MobilePhonesRepository>()));
  gh.lazySingleton<_i10.GetSmartphoneGridFirstScreenBloc>(
      () => _i10.GetSmartphoneGridFirstScreenBloc(get<_i9.GetMobilePhones>()));
  return get;
}

class _$RegisterModuleConnectionChecke
    extends _i11.RegisterModuleConnectionChecke {}
