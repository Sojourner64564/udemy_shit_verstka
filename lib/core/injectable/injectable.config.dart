// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;

import '../../features/udemy_verstka/data/data_sources/grid_mobile_phones_remote_data_sources.dart'
    as _i4;
import '../../features/udemy_verstka/data/data_sources/grid_mobile_phones_remote_data_sources_impl.dart'
    as _i5;
import '../../features/udemy_verstka/data/data_sources/mobile_phones_details_remote_data_sources/mobile_phones_details_remote_data_source.dart'
    as _i7;
import '../../features/udemy_verstka/data/data_sources/mobile_phones_details_remote_data_sources/mobile_phones_details_remote_data_source_impl.dart'
    as _i8;
import '../../features/udemy_verstka/data/data_sources/product_cart_remote_data_source/product_cart_remote_data_source.dart'
    as _i11;
import '../../features/udemy_verstka/data/data_sources/product_cart_remote_data_source/product_cart_remote_data_source_impl.dart'
    as _i12;
import '../../features/udemy_verstka/data/repositories/cart_product_repository_impl/cart_product_repository_impl.dart'
    as _i15;
import '../../features/udemy_verstka/data/repositories/grid_mobile_phones_repository_impl.dart'
    as _i19;
import '../../features/udemy_verstka/data/repositories/mobile_phones_details_repository_impl/mobile_phones_details_repository_impl.dart'
    as _i21;
import '../../features/udemy_verstka/domain/repositories/cart_product_repository/cart_product_repository.dart'
    as _i14;
import '../../features/udemy_verstka/domain/repositories/mobile_phones_details_repository/mobile_phones_details_repository.dart'
    as _i20;
import '../../features/udemy_verstka/domain/repositories/mobile_phones_repository.dart'
    as _i18;
import '../../features/udemy_verstka/domain/usecases/get_mobile_phone.dart'
    as _i23;
import '../../features/udemy_verstka/domain/usecases/get_product_in_cart/get_product_in_cart.dart'
    as _i16;
import '../../features/udemy_verstka/domain/usecases/mobile_phone_details/get_mobile_phone_details.dart'
    as _i22;
import '../../features/udemy_verstka/presentation/bloc/add_delete_to_cart_bloc/add_delete_to_cart_bloc.dart'
    as _i3;
import '../../features/udemy_verstka/presentation/bloc/get_product_phone_details/get_product_phone_details_bloc.dart'
    as _i24;
import '../../features/udemy_verstka/presentation/bloc/get_products_in_cart_bloc/get_products_in_cart_bloc.dart'
    as _i17;
import '../../features/udemy_verstka/presentation/bloc/get_smartphone_grid_first_screen_bloc/get_smartphone_grid_first_screen_bloc.dart'
    as _i25;
import '../../features/udemy_verstka/presentation/screens/cart_screen/cubit/total_number_cubit.dart'
    as _i13;
import '../network/network_info.dart' as _i9;
import '../network/network_info_impl.dart' as _i10;
import 'injectable.dart' as _i26; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.AddDeleteToCartBloc>(() => _i3.AddDeleteToCartBloc());
  gh.lazySingleton<_i4.GridMobilePhonesRemoteDataSources>(
      () => _i5.GridMobilePhonesRemoteDataSourcesImpl());
  gh.factory<_i6.InternetConnectionChecker>(
      () => registerModuleConnectionChecke.internetConnectionChecker);
  gh.lazySingleton<_i7.MobilePhonesDetailsRemoteDataSource>(
      () => _i8.MobilePhonesDetailsRemoteDataSourceImpl());
  gh.lazySingleton<_i9.NetworkInfo>(
      () => _i10.NetworkInfoImpl(get<_i6.InternetConnectionChecker>()));
  gh.lazySingleton<_i11.ProductCartRemoteDataSource>(
      () => _i12.ProductCartRemoteDataSourceImpl());
  gh.lazySingleton<_i13.TotalNumberCubit>(() => _i13.TotalNumberCubit());
  gh.lazySingleton<_i14.CartProductRepository>(
      () => _i15.CartProductrepositoryImpl(
            get<_i11.ProductCartRemoteDataSource>(),
            get<_i9.NetworkInfo>(),
          ));
  gh.lazySingleton<_i16.GetProductInCart>(
      () => _i16.GetProductInCart(get<_i14.CartProductRepository>()));
  gh.lazySingleton<_i17.GetProductsInCartBloc>(() => _i17.GetProductsInCartBloc(
        get<_i16.GetProductInCart>(),
        get<_i13.TotalNumberCubit>(),
      ));
  gh.lazySingleton<_i18.GridMobilePhonesRepository>(
      () => _i19.GridMobilePhonesRepositoryImpl(
            get<_i4.GridMobilePhonesRemoteDataSources>(),
            get<_i9.NetworkInfo>(),
          ));
  gh.lazySingleton<_i20.MobilePhonesDetailsRepository>(
      () => _i21.MobilePhonesDetailsRepositoryImpl(
            get<_i7.MobilePhonesDetailsRemoteDataSource>(),
            get<_i9.NetworkInfo>(),
          ));
  gh.lazySingleton<_i22.GetMobilePhoneDetails>(() =>
      _i22.GetMobilePhoneDetails(get<_i20.MobilePhonesDetailsRepository>()));
  gh.lazySingleton<_i23.GetMobilePhones>(
      () => _i23.GetMobilePhones(get<_i18.GridMobilePhonesRepository>()));
  gh.lazySingleton<_i24.GetProductPhoneDetailsBloc>(
      () => _i24.GetProductPhoneDetailsBloc(get<_i22.GetMobilePhoneDetails>()));
  gh.lazySingleton<_i25.GetSmartphoneGridFirstScreenBloc>(
      () => _i25.GetSmartphoneGridFirstScreenBloc(get<_i23.GetMobilePhones>()));
  return get;
}

class _$RegisterModuleConnectionChecke
    extends _i26.RegisterModuleConnectionChecke {}
