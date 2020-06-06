
import 'package:inject/inject.dart';

import '../../main.dart';
import '../domain/repository.dart';
import '../ui/weather_screen.dart';
import 'app_injector.inject.dart' as g;

@Injector()
abstract class AppInjector {

  @provide
  MyApp get app;

  @provide
  Repository get repository;

  @provide
  WeatherScreen get weatherScreen;

  static Future<AppInjector> create() {
    return g.AppInjector$Injector.create();
  }
}