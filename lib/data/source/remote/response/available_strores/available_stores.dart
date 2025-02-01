import 'package:freezed_annotation/freezed_annotation.dart';

import '../store_locations/store_locations.dart';

part 'available_stores.freezed.dart';
part 'available_stores.g.dart';

@freezed
class AvailableStores with _$AvailableStores {
  // @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AvailableStores({
  @JsonKey(name: "code")
  final int? code,
  @JsonKey(name: "data")
  final ASData? data,
  @JsonKey(name: "message")
  final String? message,
  @JsonKey(name: "status")
  final int? status,
  @JsonKey(name: "success")
  final bool? success,
}) = _AvailableStores;

  factory AvailableStores.fromJson(Map<String, dynamic> json) =>
      _$AvailableStoresFromJson(json);
}

@freezed
class ASData with _$ASData {
  const factory ASData({
    @JsonKey(name: "data")
    final List<StoreAddress>? data,
}) = _ASData;

  factory ASData.fromJson(Map<String, dynamic> json) => _$ASDataFromJson(json);
}

@freezed
class StoreAddress with _$StoreAddress {
  const factory StoreAddress({
  @JsonKey(name: "address")
  final String? address,
  @JsonKey(name: "description")
  final String? description,
  @JsonKey(name: "id")
  final int? id,
  @JsonKey(name: "lat")
  final String? lat,
  @JsonKey(name: "long")
  final String? long,
  @JsonKey(name: "name")
  final String? name,
  @JsonKey(name: "phone")
  final String? phone,
  @JsonKey(name: "work_time")
  final String? workTime,
}) = _StoreAddress;

  factory StoreAddress.fromJson(Map<String, dynamic> json) =>
      _$StoreAddressFromJson(json);


}

extension StoreAddressMapper on StoreAddress {
  OpenedStore toOpenedStore() {
    return OpenedStore(
      id: id,
      name: name,
      address: address,
      description: description,
      long: long,
      lat: lat,
      phone: phone,
      workTime: workTime,
      images: [],
    );
  }
}