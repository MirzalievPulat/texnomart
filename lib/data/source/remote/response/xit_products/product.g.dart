// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      allCount: (json['all_count'] as num?)?.toInt(),
      availability: json['availability'] as String?,
      axiomMonthlyPrice: json['axiom_monthly_price'] as String?,
      benefit: (json['benefit'] as num?)?.toInt(),
      discountPrice: (json['discount_price'] as num?)?.toInt(),
      finishPrice: (json['finish_price'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      name: json['name'] as String?,
      oldPrice: (json['old_price'] as num?)?.toInt(),
      reviewsAverage: (json['reviews_average'] as num?)?.toInt(),
      reviewsCount: (json['reviews_count'] as num?)?.toInt(),
      salePrice: (json['sale_price'] as num?)?.toInt(),
      stickers: (json['stickers'] as List<dynamic>?)
          ?.map((e) => Sticker.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'all_count': instance.allCount,
      'availability': instance.availability,
      'axiom_monthly_price': instance.axiomMonthlyPrice,
      'benefit': instance.benefit,
      'discount_price': instance.discountPrice,
      'finish_price': instance.finishPrice,
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'old_price': instance.oldPrice,
      'reviews_average': instance.reviewsAverage,
      'reviews_count': instance.reviewsCount,
      'sale_price': instance.salePrice,
      'stickers': instance.stickers?.map((e) => e.toJson()).toList(),
    };
