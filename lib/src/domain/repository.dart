import 'package:inject/inject.dart';

import '../model/weather_response_model.dart';
import 'api.dart';

@provide
class Repository {
  Api api;

  Repository(this.api);

  Future<WeatherResponse> fetchLondonWeather() => api.fetchLondonWeather();
}
