import 'package:inject/inject.dart';
import 'package:rxdart/rxdart.dart';

import '../domain/repository.dart';
import '../model/weather_response_model.dart';

@provide
class WeatherBloc {
  Repository _repository;
  WeatherBloc(this._repository);
  final _weatherFetcher = PublishSubject<WeatherResponse>();

  Observable<WeatherResponse> get weather => _weatherFetcher.stream;
  fetchLondonWeather() async {
    WeatherResponse weatherResponse = await _repository.fetchLondonWeather();
    _weatherFetcher.sink.add(weatherResponse);
  }

  dispose() {
    _weatherFetcher.close();
  }
}
