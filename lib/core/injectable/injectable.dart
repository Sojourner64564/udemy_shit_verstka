
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:udemy_shit_verstka/core/injectable/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);

@module
abstract class RegisterModuleConnectionChecke{
InternetConnectionChecker get internetConnectionChecker => InternetConnectionChecker();
}