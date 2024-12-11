import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_locations.g.dart';

@JsonSerializable()
class StoreLocations {
  @JsonKey(name: "success")
  final bool? success;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "code")
  final int? code;
  @JsonKey(name: "data")
  final Data? data;

  StoreLocations({
    this.success,
    this.message,
    this.code,
    this.data,
  });

  StoreLocations copyWith({
    bool? success,
    String? message,
    int? code,
    Data? data,
  }) =>
      StoreLocations(
        success: success ?? this.success,
        message: message ?? this.message,
        code: code ?? this.code,
        data: data ?? this.data,
      );

  factory StoreLocations.fromJson(Map<String, dynamic> json) => _$StoreLocationsFromJson(json);

  Map<String, dynamic> toJson() => _$StoreLocationsToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "data")
  final List<Datum>? data;

  Data({
    this.data,
  });

  Data copyWith({
    List<Datum>? data,
  }) =>
      Data(
        data: data ?? this.data,
      );

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "opened_stores")
  final List<OpenedStore>? openedStores;
  @JsonKey(name: "not_opened_stores")
  final List<dynamic>? notOpenedStores;

  Datum({
    this.id,
    this.name,
    this.openedStores,
    this.notOpenedStores,
  });

  Datum copyWith({
    int? id,
    String? name,
    List<OpenedStore>? openedStores,
    List<dynamic>? notOpenedStores,
  }) =>
      Datum(
        id: id ?? this.id,
        name: name ?? this.name,
        openedStores: openedStores ?? this.openedStores,
        notOpenedStores: notOpenedStores ?? this.notOpenedStores,
      );

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class OpenedStore {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "address")
  final String? address;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "long")
  final String? long;
  @JsonKey(name: "lat")
  final String? lat;
  @JsonKey(name: "phone")
  final String? phone;
  @JsonKey(name: "work_time")
  final String? workTime;
  @JsonKey(name: "images")
  final List<dynamic>? images;

  OpenedStore({
    this.id,
    this.name,
    this.address,
    this.description,
    this.long,
    this.lat,
    this.phone,
    this.workTime,
    this.images,
  });

  OpenedStore copyWith({
    int? id,
    String? name,
    String? address,
    String? description,
    String? long,
    String? lat,
    String? phone,
    String? workTime,
    List<dynamic>? images,
  }) =>
      OpenedStore(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        description: description ?? this.description,
        long: long ?? this.long,
        lat: lat ?? this.lat,
        phone: phone ?? this.phone,
        workTime: workTime ?? this.workTime,
        images: images ?? this.images,
      );

  factory OpenedStore.fromJson(Map<String, dynamic> json) => _$OpenedStoreFromJson(json);

  Map<String, dynamic> toJson() => _$OpenedStoreToJson(this);
}
