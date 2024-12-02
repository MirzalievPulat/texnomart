// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xit_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$XitProductsImpl _$$XitProductsImplFromJson(Map<String, dynamic> json) =>
    _$XitProductsImpl(
      code: (json['code'] as num?)?.toInt(),
      datas: json['data'] == null
          ? null
          : Datas.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      status: (json['status'] as num?)?.toInt(),
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$XitProductsImplToJson(_$XitProductsImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.datas?.toJson(),
      'message': instance.message,
      'status': instance.status,
      'success': instance.success,
    };
