import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:texnomart/data/source/remote/response/sticker.dart';

part 'product.freezed.dart';

part 'product.g.dart';

@freezed
class Product with _$Product {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Product({
    @JsonKey(name: "all_count")
    int? allCount,
    String? availability,
    @JsonKey(name: "axiom_monthly_price")
    String? axiomMonthlyPrice,
    int? benefit,
    @JsonKey(name: "discount_price")
    int? discountPrice,
    @JsonKey(name: "finish_price")
    int? finishPrice,
    int? id,
    String? image,
    String? name,
    @JsonKey(name: "old_price")
    int? oldPrice,
    @JsonKey(name: "reviews_average")
    int? reviewsAverage,
    @JsonKey(name: "reviews_count")
    int? reviewsCount,
    @JsonKey(name: "sale_months")
    List<String>? saleMonths,
    @JsonKey(name: "sale_price")
    int? salePrice,
    List<Sticker>? stickers,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}