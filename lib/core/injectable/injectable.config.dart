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
import '../../features/udemy_verstka/data/repositories/mobile_phones_repository_impl.dart'
    as _i9;
import '../../features/udemy_verstka/domain/repositories/mobile_phones_repository.dart'
    as _i8;
import '../../features/udemy_verstka/domain/usecases/get_mobile_phone.dart'
    as _i10;
import '../../features/udemy_verstka/presentation/bloc/get_smartphone_grid_first_screen_bloc/get_smartphone_grid_first_screen_bloc.dart'
    as _i11;
import '../network/network_info.dart' as _i6;
import '../network/network_info_impl.dart' as _i7;
import 'injectable.dart' as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i6.NetworkInfo>(
      () => _i7.NetworkInfoImpl(get<_i3.InternetConnectionChecker>()));
  gh.lazySingleton<_i8.MobilePhonesRepository>(
      () => _i9.MobilePhonesRepositoryImpl(
            get<_i4.MobilePhonesRemoteDataSources>(),
            get<_i6.NetworkInfo>(),
          ));
  gh.lazySingleton<_i10.GetMobilePhones>(
      () => _i10.GetMobilePhones(get<_i8.MobilePhonesRepository>()));
  gh.lazySingleton<_i11.GetSmartphoneGridFirstScreenBloc>(
      () => _i11.GetSmartphoneGridFirstScreenBloc(get<_i10.GetMobilePhones>()));
  return get;
}

class _$RegisterModuleConnectionChecke
    extends _i12.RegisterModuleConnectionChecke {}
