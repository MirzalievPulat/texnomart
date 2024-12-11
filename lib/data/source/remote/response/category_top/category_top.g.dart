// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_top.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryTopImpl _$$CategoryTopImplFromJson(Map<String, dynamic> json) =>
    _$CategoryTopImpl(
      code: (json['code'] as num).toInt(),
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      status: (json['status'] as num).toInt(),
      success: json['success'] as bool,
    );

Map<String, dynamic> _$$CategoryTopImplToJson(_$CategoryTopImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data.toJson(),
      'message': instance.message,
      'status': instance.status,
      'success': instance.success,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Parent.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasChild: json['has_child'] as bool,
      hasChildImage: json['has_child_image'] as bool,
      parent: Parent.fromJson(json['parent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'has_child': instance.hasChild,
      'has_child_image': instance.hasChildImage,
      'parent': instance.parent.toJson(),
    };

_$ParentImpl _$$ParentImplFromJson(Map<String, dynamic> json) => _$ParentImpl(
      hasChild: json['has_child'] as bool,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$ParentImplToJson(_$ParentImpl instance) =>
    <String, dynamic>{
      'has_child': instance.hasChild,
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };
