// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryItems _$CategoryItemsFromJson(Map<String, dynamic> json) =>
    CategoryItems(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryItemsToJson(CategoryItems instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'products': instance.products,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      saleMonths: (json['sale_months'] as List<dynamic>?)
          ?.map((e) => SaleMonth.fromJson(e as Map<String, dynamic>))
          .toList(),
      stickers: (json['stickers'] as List<dynamic>?)
          ?.map((e) => Sticker.fromJson(e as Map<String, dynamic>))
          .toList(),
      availability:
          $enumDecodeNullable(_$AvailabilityEnumMap, json['availability']),
      discount: json['discount'],
      code: json['code'] as String?,
      salePrice: (json['sale_price'] as num?)?.toInt(),
      fSalePrice: json['f_sale_price'] as String?,
      oldPrice: (json['old_price'] as num?)?.toInt(),
      fOldPrice: json['f_old_price'] as String?,
      loanPrice: (json['loan_price'] as num?)?.toInt(),
      fLoanPrice: json['f_loan_price'] as String?,
      axiomMonthlyPrice: json['axiom_monthly_price'] as String?,
      reviewsCount: (json['reviews_count'] as num?)?.toInt(),
      reviewsAverage: (json['reviews_average'] as num?)?.toInt(),
      allCount: (json['all_count'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      viewed: (json['viewed'] as num?)?.toInt(),
      orderCount: (json['order_count'] as num?)?.toInt(),
      lowPrice: json['low_price'] as String?,
      categoryId: json['category_id'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      benefit: (json['benefit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'sale_months': instance.saleMonths,
      'stickers': instance.stickers,
      'availability': _$AvailabilityEnumMap[instance.availability],
      'discount': instance.discount,
      'code': instance.code,
      'sale_price': instance.salePrice,
      'f_sale_price': instance.fSalePrice,
      'old_price': instance.oldPrice,
      'f_old_price': instance.fOldPrice,
      'loan_price': instance.loanPrice,
      'f_loan_price': instance.fLoanPrice,
      'axiom_monthly_price': instance.axiomMonthlyPrice,
      'reviews_count': instance.reviewsCount,
      'reviews_average': instance.reviewsAverage,
      'all_count': instance.allCount,
      'created_at': instance.createdAt,
      'brand': instance.brand,
      'viewed': instance.viewed,
      'order_count': instance.orderCount,
      'low_price': instance.lowPrice,
      'category_id': instance.categoryId,
      'rating': instance.rating,
      'benefit': instance.benefit,
    };

const _$AvailabilityEnumMap = {
  Availability.OPEN_TO_CART: 'openToCart',
  Availability.WITH_MANAGER: 'withManager',
};

Brand _$BrandFromJson(Map<String, dynamic> json) => Brand(
      id: (json['id'] as num?)?.toInt(),
      slug: json['slug'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$BrandToJson(Brand instance) => <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
    };

MainCharacter _$MainCharacterFromJson(Map<String, dynamic> json) =>
    MainCharacter(
      name: $enumDecodeNullable(_$NameEnumMap, json['name']),
      value: json['value'] as String?,
      order: (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MainCharacterToJson(MainCharacter instance) =>
    <String, dynamic>{
      'name': _$NameEnumMap[instance.name],
      'value': instance.value,
      'order': instance.order,
    };

const _$NameEnumMap = {
  Name.EMPTY: 'Камералар сони',
  Name.FLUFFY: 'Аккумулятор ҳажми',
  Name.NAME: 'Ички хотира',
  Name.PURPLE: 'Процессор',
  Name.STICKY: 'Асосий Камера',
  Name.TENTACLED: 'Экраннинг янгиланиш тезлиги',
};

SaleMonth _$SaleMonthFromJson(Map<String, dynamic> json) => SaleMonth(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      key: json['key'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$SaleMonthToJson(SaleMonth instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'key': instance.key,
      'image': instance.image,
    };

Sticker _$StickerFromJson(Map<String, dynamic> json) => Sticker(
      name: json['name'] as String?,
      textColor: json['text_color'] as String?,
      backgroundColor: json['background_color'] as String?,
      key: json['key'] as String?,
      isImage: json['is_image'] as bool?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$StickerToJson(Sticker instance) => <String, dynamic>{
      'name': instance.name,
      'text_color': instance.textColor,
      'background_color': instance.backgroundColor,
      'key': instance.key,
      'is_image': instance.isImage,
      'image': instance.image,
    };
