import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../local/model/product_hive.dart';

part 'category_items.g.dart';

@JsonSerializable()
class CategoryItems {
  @JsonKey(name: "success")
  final bool? success;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "code")
  final int? code;
  @JsonKey(name: "data")
  final Data? data;

  CategoryItems({
    this.success,
    this.message,
    this.code,
    this.data,
  });

  CategoryItems copyWith({
    bool? success,
    String? message,
    int? code,
    Data? data,
  }) =>
      CategoryItems(
        success: success ?? this.success,
        message: message ?? this.message,
        code: code ?? this.code,
        data: data ?? this.data,
      );

  factory CategoryItems.fromJson(Map<String, dynamic> json) => _$CategoryItemsFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryItemsToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "products")
  final List<Product>? products;

  Data({
    this.products,
  });

  Data copyWith({
    List<Product>? products,
  }) =>
      Data(
        products: products ?? this.products,
      );

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Product {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "sale_months")
  final List<SaleMonth>? saleMonths;
  @JsonKey(name: "stickers")
  final List<Sticker>? stickers;
  @JsonKey(name: "availability")
  final Availability? availability;
  @JsonKey(name: "discount")
  final dynamic discount;
  @JsonKey(name: "code")
  final String? code;
  // @JsonKey(name: "main_characters")
  // final List<MainCharacter>? mainCharacters;
  @JsonKey(name: "sale_price")
  final int? salePrice;
  @JsonKey(name: "f_sale_price")
  final String? fSalePrice;
  @JsonKey(name: "old_price")
  final int? oldPrice;
  @JsonKey(name: "f_old_price")
  final String? fOldPrice;
  @JsonKey(name: "loan_price")
  final int? loanPrice;
  @JsonKey(name: "f_loan_price")
  final String? fLoanPrice;
  @JsonKey(name: "axiom_monthly_price")
  final String? axiomMonthlyPrice;
  @JsonKey(name: "reviews_count")
  final int? reviewsCount;
  @JsonKey(name: "reviews_average")
  final int? reviewsAverage;
  @JsonKey(name: "all_count")
  final int? allCount;
  @JsonKey(name: "created_at")
  final String? createdAt;
  @JsonKey(name: "brand")
  final Brand? brand;
  @JsonKey(name: "viewed")
  final int? viewed;
  @JsonKey(name: "order_count")
  final int? orderCount;
  @JsonKey(name: "low_price")
  final String? lowPrice;
  @JsonKey(name: "category_id")
  final String? categoryId;
  @JsonKey(name: "rating")
  final int? rating;
  @JsonKey(name: "benefit")
  final int? benefit;

  Product({
    this.id,
    this.name,
    this.image,
    this.saleMonths,
    this.stickers,
    this.availability,
    this.discount,
    this.code,
    // this.mainCharacters,
    this.salePrice,
    this.fSalePrice,
    this.oldPrice,
    this.fOldPrice,
    this.loanPrice,
    this.fLoanPrice,
    this.axiomMonthlyPrice,
    this.reviewsCount,
    this.reviewsAverage,
    this.allCount,
    this.createdAt,
    this.brand,
    this.viewed,
    this.orderCount,
    this.lowPrice,
    this.categoryId,
    this.rating,
    this.benefit,
  });

  Product copyWith({
    int? id,
    String? name,
    String? image,
    List<SaleMonth>? saleMonths,
    List<Sticker>? stickers,
    Availability? availability,
    dynamic discount,
    String? code,
    // List<MainCharacter>? mainCharacters,
    int? salePrice,
    String? fSalePrice,
    int? oldPrice,
    String? fOldPrice,
    int? loanPrice,
    String? fLoanPrice,
    String? axiomMonthlyPrice,
    int? reviewsCount,
    int? reviewsAverage,
    int? allCount,
    String? createdAt,
    Brand? brand,
    int? viewed,
    int? orderCount,
    String? lowPrice,
    String? categoryId,
    int? rating,
    int? benefit,
  }) =>
      Product(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
        saleMonths: saleMonths ?? this.saleMonths,
        stickers: stickers ?? this.stickers,
        availability: availability ?? this.availability,
        discount: discount ?? this.discount,
        code: code ?? this.code,
        // mainCharacters: mainCharacters ?? this.mainCharacters,
        salePrice: salePrice ?? this.salePrice,
        fSalePrice: fSalePrice ?? this.fSalePrice,
        oldPrice: oldPrice ?? this.oldPrice,
        fOldPrice: fOldPrice ?? this.fOldPrice,
        loanPrice: loanPrice ?? this.loanPrice,
        fLoanPrice: fLoanPrice ?? this.fLoanPrice,
        axiomMonthlyPrice: axiomMonthlyPrice ?? this.axiomMonthlyPrice,
        reviewsCount: reviewsCount ?? this.reviewsCount,
        reviewsAverage: reviewsAverage ?? this.reviewsAverage,
        allCount: allCount ?? this.allCount,
        createdAt: createdAt ?? this.createdAt,
        brand: brand ?? this.brand,
        viewed: viewed ?? this.viewed,
        orderCount: orderCount ?? this.orderCount,
        lowPrice: lowPrice ?? this.lowPrice,
        categoryId: categoryId ?? this.categoryId,
        rating: rating ?? this.rating,
        benefit: benefit ?? this.benefit,
      );

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

enum Availability {
  @JsonValue("openToCart")
  OPEN_TO_CART,
  @JsonValue("withManager")
  WITH_MANAGER
}

@JsonSerializable()
class Brand {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "name")
  final String? name;

  Brand({
    this.id,
    this.slug,
    this.name,
  });

  Brand copyWith({
    int? id,
    String? slug,
    String? name,
  }) =>
      Brand(
        id: id ?? this.id,
        slug: slug ?? this.slug,
        name: name ?? this.name,
      );

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);

  Map<String, dynamic> toJson() => _$BrandToJson(this);
}

@JsonSerializable()
class MainCharacter {
  @JsonKey(name: "name")
  final Name? name;
  @JsonKey(name: "value")
  final String? value;
  @JsonKey(name: "order")
  final int? order;

  MainCharacter({
    this.name,
    this.value,
    this.order,
  });

  MainCharacter copyWith({
    Name? name,
    String? value,
    int? order,
  }) =>
      MainCharacter(
        name: name ?? this.name,
        value: value ?? this.value,
        order: order ?? this.order,
      );

  factory MainCharacter.fromJson(Map<String, dynamic> json) => _$MainCharacterFromJson(json);

  Map<String, dynamic> toJson() => _$MainCharacterToJson(this);
}

enum Name {
  @JsonValue("Камералар сони")
  EMPTY,
  @JsonValue("Аккумулятор ҳажми")
  FLUFFY,
  @JsonValue("Ички хотира")
  NAME,
  @JsonValue("Процессор")
  PURPLE,
  @JsonValue("Асосий Камера")
  STICKY,
  @JsonValue("Экраннинг янгиланиш тезлиги")
  TENTACLED
}

@JsonSerializable()
class SaleMonth {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "key")
  final String? key;
  @JsonKey(name: "image")
  final String? image;

  SaleMonth({
    this.id,
    this.name,
    this.key,
    this.image,
  });

  SaleMonth copyWith({
    int? id,
    String? name,
    String? key,
    String? image,
  }) =>
      SaleMonth(
        id: id ?? this.id,
        name: name ?? this.name,
        key: key ?? this.key,
        image: image ?? this.image,
      );

  factory SaleMonth.fromJson(Map<String, dynamic> json) => _$SaleMonthFromJson(json);

  Map<String, dynamic> toJson() => _$SaleMonthToJson(this);
}

@JsonSerializable()
class Sticker {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "text_color")
  final String? textColor;
  @JsonKey(name: "background_color")
  final String? backgroundColor;
  @JsonKey(name: "key")
  final String? key;
  @JsonKey(name: "is_image")
  final bool? isImage;
  @JsonKey(name: "image")
  final String? image;

  Sticker({
    this.name,
    this.textColor,
    this.backgroundColor,
    this.key,
    this.isImage,
    this.image,
  });

  Sticker copyWith({
    String? name,
    String? textColor,
    String? backgroundColor,
    String? key,
    bool? isImage,
    String? image,
  }) =>
      Sticker(
        name: name ?? this.name,
        textColor: textColor ?? this.textColor,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        key: key ?? this.key,
        isImage: isImage ?? this.isImage,
        image: image ?? this.image,
      );

  factory Sticker.fromJson(Map<String, dynamic> json) => _$StickerFromJson(json);

  Map<String, dynamic> toJson() => _$StickerToJson(this);
}



ProductHive fromProductToProductHive(Product product) {
  return ProductHive(
    axiomMonthlyPrice: product.axiomMonthlyPrice ?? '',
    finishPrice: product.salePrice ?? 0,
    id: product.id ?? 0,
    image: product.image ?? '',
    name: product.name ?? '',
    liked: false, // Default or derived value
    inCart: false, // Default or derived value
    cartAmount: 0, // Default or derived value
    selectedToBuy: false, // Default or derived value
    isXitProduct: false, // Default or derived value
  );
}