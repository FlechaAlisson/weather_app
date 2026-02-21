// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressModel _$AddressModelFromJson(Map<String, dynamic> json) =>
    _AddressModel(
      lat: json['lat'] as String,
      lon: json['lon'] as String,
      displayName: json['name'] as String,
      postcode: _postcodeFromAddress(json['address'] as Map<String, dynamic>),
    );
