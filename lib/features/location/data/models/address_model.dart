// features/location/data/models/address_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/location/domain/entities/address.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

String _postcodeFromAddress(Map<String, dynamic> address) {
  return address['postcode'] ?? '';
}

@Freezed(toJson: false)
abstract class AddressModel with _$AddressModel {
  const AddressModel._();

  const factory AddressModel({
    required String lat,
    required String lon,
    @JsonKey(name: 'name') required String displayName,
    @JsonKey(name: 'address', fromJson: _postcodeFromAddress)
    required String postcode,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  AddressEntity toEntity() {
    return AddressEntity(
      lat: double.parse(lat),
      long: double.parse(lon),
      postcode: postcode,
      displayName: displayName,
    );
  }
}
