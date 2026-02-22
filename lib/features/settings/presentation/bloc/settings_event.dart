sealed class SettingsEvent {
  const SettingsEvent();
}

class LoadSetting extends SettingsEvent {
  const LoadSetting();
}

class ChangeTempUnit extends SettingsEvent {
  final String unit;
  const ChangeTempUnit(String first, {required this.unit});
}
