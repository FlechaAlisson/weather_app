import 'package:flutter/material.dart';
import 'package:weather_app/features/weather/domain/entities/forecast_entity.dart';
import 'package:weather_app/shared/extensions/datetime_extension.dart';

class CustomWeatherTile extends StatelessWidget {
  final ForecastEntity day;
  final double currentTemp;

  const CustomWeatherTile({
    super.key,
    required this.day,
    required this.currentTemp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      decoration: BoxDecoration(
        color: day.date.isToday() ? Colors.blue.shade50 : Colors.grey.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: day.date.isToday()
              ? Colors.blue.shade200
              : Colors.grey.shade200,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            // Data / Today
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    day.date.isToday() ? 'Today' : day.date.customWeekday(),
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: day.date.isToday()
                          ? Colors.blue.shade700
                          : Colors.black87,
                    ),
                  ),
                  if (!day.date.isToday())
                    Text(
                      day.date.customFormatDate(),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade500,
                      ),
                    ),
                ],
              ),
            ),
            if (day.date.isToday())
              Expanded(child: Text('Now: $currentTemp ° ')),

            // Temp range
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${day.tempMin}°',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue.shade400,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Icon(
                      Icons.remove,
                      size: 12,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Text(
                    '${day.tempMax}°',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.red.shade400,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            // Precipitação
            Row(
              children: [
                Icon(
                  Icons.water_drop,
                  size: 14,
                  color: Colors.blue.shade300,
                ),
                const SizedBox(width: 4),
                Text(
                  '${day.precipitationMm}mm',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.blue.shade600,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
