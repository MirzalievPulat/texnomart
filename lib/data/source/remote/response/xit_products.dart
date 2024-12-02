import 'package:freezed_annotation/freezed_annotation.dart';

import 'datas.dart';

part 'xit_products.freezed.dart';
part 'xit_products.g.dart';

@freezed
class XitProducts with _$XitProducts {
  @JsonSerializable(fieldRename: FieldRename.snake,explicitToJson: true)
  const factory XitProducts({
    int? code,
    @JsonKey(name: "data")
    Datas? datas,
    String? message,
    int? status,
    bool? success,
  })= _XitProducts;

  factory XitProducts.fromJson(Map<String, dynamic> json) =>
      _$XitProductsFromJson(json);
}


//
// class XitProduct {
//   int? code;
//   Data? data;
//   String? message;
//   int? status;
//   bool? success;
//
//   XitProduct({this.code, this.data, this.message, this.status, this.success});
//
//   XitProduct.fromJson(Map<String, dynamic> json) {
//     code = json['code'];
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//     message = json['message'];
//     status = json['status'];
//     success = json['success'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['code'] = this.code;
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();//here
//     }
//     data['message'] = this.message;
//     data['status'] = this.status;
//     data['success'] = this.success;
//     return data;
//   }
// }
//
// class Data {
//   List<Data>? data;
//
//   Data({this.data});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Data {
//   int? allCount;
//   String? availability;
//   String? axiomMonthlyPrice;
//   int? benefit;
//   int? discountPrice;
//   int? finishPrice;
//   int? id;
//   String? image;
//   String? name;
//   Null? oldPrice;
//   int? reviewsAverage;
//   int? reviewsCount;
//   List<Null>? saleMonths;
//   int? salePrice;
//   List<Stickers>? stickers;
//
//   Data(
//       {this.allCount,
//         this.availability,
//         this.axiomMonthlyPrice,
//         this.benefit,
//         this.discountPrice,
//         this.finishPrice,
//         this.id,
//         this.image,
//         this.name,
//         this.oldPrice,
//         this.reviewsAverage,
//         this.reviewsCount,
//         this.saleMonths,
//         this.salePrice,
//         this.stickers});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     allCount = json['all_count'];
//     availability = json['availability'];
//     axiomMonthlyPrice = json['axiom_monthly_price'];
//     benefit = json['benefit'];
//     discountPrice = json['discount_price'];
//     finishPrice = json['finish_price'];
//     id = json['id'];
//     image = json['image'];
//     name = json['name'];
//     oldPrice = json['old_price'];
//     reviewsAverage = json['reviews_average'];
//     reviewsCount = json['reviews_count'];
//     if (json['sale_months'] != null) {
//       saleMonths = <Null>[];
//       json['sale_months'].forEach((v) {
//         saleMonths!.add(new Null.fromJson(v));
//       });
//     }
//     salePrice = json['sale_price'];
//     if (json['stickers'] != null) {
//       stickers = <Stickers>[];
//       json['stickers'].forEach((v) {
//         stickers!.add(new Stickers.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['all_count'] = this.allCount;
//     data['availability'] = this.availability;
//     data['axiom_monthly_price'] = this.axiomMonthlyPrice;
//     data['benefit'] = this.benefit;
//     data['discount_price'] = this.discountPrice;
//     data['finish_price'] = this.finishPrice;
//     data['id'] = this.id;
//     data['image'] = this.image;
//     data['name'] = this.name;
//     data['old_price'] = this.oldPrice;
//     data['reviews_average'] = this.reviewsAverage;
//     data['reviews_count'] = this.reviewsCount;
//     if (this.saleMonths != null) {
//       data['sale_months'] = this.saleMonths!.map((v) => v.toJson()).toList();
//     }
//     data['sale_price'] = this.salePrice;
//     if (this.stickers != null) {
//       data['stickers'] = this.stickers!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Stickers {
//   String? backgroundColor;
//   String? image;
//   bool? isImage;
//   String? name;
//   bool? showInCard;
//   String? textColor;
//
//   Stickers(
//       {this.backgroundColor,
//         this.image,
//         this.isImage,
//         this.name,
//         this.showInCard,
//         this.textColor});
//
//   Stickers.fromJson(Map<String, dynamic> json) {
//     backgroundColor = json['background_color'];
//     image = json['image'];
//     isImage = json['is_image'];
//     name = json['name'];
//     showInCard = json['show_in_card'];
//     textColor = json['text_color'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['background_color'] = this.backgroundColor;
//     data['image'] = this.image;
//     data['is_image'] = this.isImage;
//     data['name'] = this.name;
//     data['show_in_card'] = this.showInCard;
//     data['text_color'] = this.textColor;
//     return data;
//   }
// }