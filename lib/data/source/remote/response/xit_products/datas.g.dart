// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatasImpl _$$DatasImplFromJson(Map<String, dynamic> json) => _$DatasImpl(
      products: (json['data'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatasImplToJson(_$DatasImpl instance) =>
    <String, dynamic>{
      'data': instance.products?.map((e) => e.toJson()).toList(),
    };
