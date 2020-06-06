
import 'package:inject/inject.dart';

import '../domain/repository.dart';

@Injector()
abstract class AppInjector {

  @provide
  Repository get repository;

  static Future<AppInjector> create() {
    
  }
}