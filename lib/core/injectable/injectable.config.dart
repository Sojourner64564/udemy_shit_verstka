// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;

import '../../features/udemy_verstka/data/data_sources/grid_mobile_phones_remote_data_sources.dart'
    as _i3;
import '../../features/udemy_verstka/data/data_sources/grid_mobile_phones_remote_data_sources_impl.dart'
    as _i4;
import '../../features/udemy_verstka/data/data_sources/mobile_phones_details_remote_data_sources/mobile_phones_details_remote_data_source.dart'
    as _i6;
import '../../features/udemy_verstka/data/data_sources/mobile_phones_details_remote_data_sources/mobile_phones_details_remote_data_source_impl.dart'
    as _i7;
import '../../features/udemy_verstka/data/data_sources/product_cart_remote_data_source/product_cart_remote_data_source.dart'
    as _i10;
import '../../features/udemy_verstka/data/data_sources/product_cart_remote_data_source/product_cart_remote_data_source_impl.dart'
    as _i11;
import '../../features/udemy_verstka/data/repositories/cart_product_repository_impl/cart_product_repository_impl.dart'
    as _i13;
import '../../features/udemy_verstka/data/repositories/grid_mobile_phones_repository_impl.dart'
    as _i17;
import '../../features/udemy_verstka/data/repositories/mobile_phones_details_repository_impl/mobile_phones_details_repository_impl.dart'
    as _i19;
import '../../features/udemy_verstka/domain/repositories/cart_product_repository/cart_product_repository.dart'
    as _i12;
import '../../features/udemy_verstka/domain/repositories/mobile_phones_details_repository/mobile_phones_details_repository.dart'
    as _i18;
import '../../features/udemy_verstka/domain/repositories/mobile_phones_repository.dart'
    as _i16;
import '../../features/udemy_verstka/domain/usecases/get_mobile_phone.dart'
    as _i21;
import '../../features/udemy_verstka/domain/usecases/get_product_in_cart/get_product_in_cart.dart'
    as _i14;
import '../../features/udemy_verstka/domain/usecases/mobile_phone_details/get_mobile_phone_details.dart'
    as _i20;
import '../../features/udemy_verstka/presentation/bloc/get_product_phone_details/get_product_phone_details_bloc.dart'
    as _i22;
import '../../features/udemy_verstka/presentation/bloc/get_products_in_cart_bloc/get_products_in_cart_bloc.dart'
    as _i15;
import '../../features/udemy_verstka/presentation/bloc/get_smartphone_grid_first_screen_bloc/get_smartphone_grid_first_screen_bloc.dart'
    as _i23;
import '../network/network_info.dart' as _i8;
import '../network/network_info_impl.dart' as _i9;
import 'injectable.dart' as _i24; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.GridMobilePhonesRemoteDataSources>(
      () => _i4.GridMobilePhonesRemoteDataSourcesImpl());
  gh.factory<_i5.InternetConnectionChecker>(
      () => registerModuleConnectionChecke.internetConnectionChecker);
  gh.lazySingleton<_i6.MobilePhonesDetailsRemoteDataSource>(
      () => _i7.MobilePhonesDetailsRemoteDataSourceImpl());
  gh.lazySingleton<_i8.NetworkInfo>(
      () => _i9.NetworkInfoImpl(get<_i5.InternetConnectionChecker>()));
  gh.lazySingleton<_i10.ProductCartRemoteDataSource>(
      () => _i11.ProductCartRemoteDataSourceImpl());
  gh.lazySingleton<_i12.CartProductRepository>(
      () => _i13.CartProductrepositoryImpl(
            get<_i10.ProductCartRemoteDataSource>(),
            get<_i8.NetworkInfo>(),
          ));
  gh.lazySingleton<_i14.GetProductInCart>(
      () => _i14.GetProductInCart(get<_i12.CartProductRepository>()));
  gh.lazySingleton<_i15.GetProductsInCartBloc>(
      () => _i15.GetProductsInCartBloc(get<_i12.CartProductRepository>()));
  gh.lazySingleton<_i16.GridMobilePhonesRepository>(
      () => _i17.GridMobilePhonesRepositoryImpl(
            get<_i3.GridMobilePhonesRemoteDataSources>(),
            get<_i8.NetworkInfo>(),
          ));
  gh.lazySingleton<_i18.MobilePhonesDetailsRepository>(
      () => _i19.MobilePhonesDetailsRepositoryImpl(
            get<_i6.MobilePhonesDetailsRemoteDataSource>(),
            get<_i8.NetworkInfo>(),
          ));
  gh.lazySingleton<_i20.GetMobilePhoneDetails>(() =>
      _i20.GetMobilePhoneDetails(get<_i18.MobilePhonesDetailsRepository>()));
  gh.lazySingleton<_i21.GetMobilePhones>(
      () => _i21.GetMobilePhones(get<_i16.GridMobilePhonesRepository>()));
  gh.lazySingleton<_i22.GetProductPhoneDetailsBloc>(
      () => _i22.GetProductPhoneDetailsBloc(get<_i20.GetMobilePhoneDetails>()));
  gh.lazySingleton<_i23.GetSmartphoneGridFirstScreenBloc>(
      () => _i23.GetSmartphoneGridFirstScreenBloc(get<_i21.GetMobilePhones>()));
  return get;
}

class _$RegisterModuleConnectionChecke
    extends _i24.RegisterModuleConnectionChecke {}
