enum SettingsStateEnum {
  inital,
  loading,
  error,
}

class SettingsState {
  SettingsStateEnum status;
  String? errorMessage;
  String? tempUnit;

  SettingsState({
    this.status = SettingsStateEnum.inital,
    this.errorMessage,
    this.tempUnit,
  });

  SettingsState copyWith({
    SettingsStateEnum? status,
    String? errorMessage,
    String? tempUnit,
  }) => SettingsState(
    status: status ?? this.status,
    errorMessage: errorMessage ?? this.errorMessage,
    tempUnit: tempUnit ?? this.tempUnit,
  );
}
