import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/weather/domain/entities/forecast_entity.dart';

part 'forecast_model.freezed.dart';
part 'forecast_model.g.dart';

@freezed
abstract class ForecastModel with _$ForecastModel {
  const ForecastModel._();

  const factory ForecastModel({
    required List<String> time,
    @JsonKey(name: 'temperature_2m_max') required List<double> temperature2mMax,
    @JsonKey(name: 'temperature_2m_min') required List<double> temperature2mMin,
    @JsonKey(name: 'precipitation_probability_max')
    required List<double> precipitationSum,
  }) = _ForecastModel;

  factory ForecastModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastModelFromJson(json);

  List<ForecastEntity> toEntityList() {
    return List.generate(
      time.length,
      (i) => ForecastEntity(
        date: DateTime.parse(time[i]),
        tempMax: temperature2mMax[i],
        tempMin: temperature2mMin[i],
        precipitationMm: precipitationSum[i],
      ),
    );
  }
}
