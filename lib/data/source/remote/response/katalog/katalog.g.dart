// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'katalog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KatalogImpl _$$KatalogImplFromJson(Map<String, dynamic> json) =>
    _$KatalogImpl(
      code: (json['code'] as num).toInt(),
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      status: (json['status'] as num).toInt(),
      success: json['success'] as bool,
    );

Map<String, dynamic> _$$KatalogImplToJson(_$KatalogImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data.toJson(),
      'message': instance.message,
      'status': instance.status,
      'success': instance.success,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      brands: json['brands'] as List<dynamic>,
      childs: (json['childs'] as List<dynamic>)
          .map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
      icon: json['icon'] as String,
      name: json['name'] as String,
      showChildsInWebMobile: json['show_childs_in_web_mobile'] as bool,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'brands': instance.brands,
      'childs': instance.childs.map((e) => e.toJson()).toList(),
      'icon': instance.icon,
      'name': instance.name,
      'show_childs_in_web_mobile': instance.showChildsInWebMobile,
      'slug': instance.slug,
    };

_$ChildImpl _$$ChildImplFromJson(Map<String, dynamic> json) => _$ChildImpl(
      childs: (json['childs'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      showChildsInWebMobile: json['show_childs_in_web_mobile'] as bool,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$ChildImplToJson(_$ChildImpl instance) =>
    <String, dynamic>{
      'childs': instance.childs?.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'show_childs_in_web_mobile': instance.showChildsInWebMobile,
      'slug': instance.slug,
    };
