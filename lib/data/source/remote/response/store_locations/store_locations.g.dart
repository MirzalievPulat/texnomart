// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_locations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreLocations _$StoreLocationsFromJson(Map<String, dynamic> json) =>
    StoreLocations(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreLocationsToJson(StoreLocations instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'data': instance.data,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      openedStores: (json['opened_stores'] as List<dynamic>?)
          ?.map((e) => OpenedStore.fromJson(e as Map<String, dynamic>))
          .toList(),
      notOpenedStores: json['not_opened_stores'] as List<dynamic>?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'opened_stores': instance.openedStores,
      'not_opened_stores': instance.notOpenedStores,
    };

OpenedStore _$OpenedStoreFromJson(Map<String, dynamic> json) => OpenedStore(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      address: json['address'] as String?,
      description: json['description'] as String?,
      long: json['long'] as String?,
      lat: json['lat'] as String?,
      phone: json['phone'] as String?,
      workTime: json['work_time'] as String?,
      images: json['images'] as List<dynamic>?,
    );

Map<String, dynamic> _$OpenedStoreToJson(OpenedStore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'description': instance.description,
      'long': instance.long,
      'lat': instance.lat,
      'phone': instance.phone,
      'work_time': instance.workTime,
      'images': instance.images,
    };
