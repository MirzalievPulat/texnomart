import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:texnomart/data/source/remote/response/xit_products/product.dart';


part 'product_hive.g.dart';

@HiveType(typeId: 1)
class ProductHive extends  Equatable {
  @HiveField(1)
  final String axiomMonthlyPrice;
  @HiveField(2)
  final int finishPrice;
  @HiveField(3)
  final int id;
  @HiveField(4)
  final String image;
  @HiveField(5)
  final String name;
  @HiveField(6)
  final bool liked;
  @HiveField(7)
  final bool inCart;
  @HiveField(8)
  final int cartAmount;
  @HiveField(9)
  final bool selectedToBuy;
  @HiveField(10)
  final bool isXitProduct;

  ProductHive({
    required this.axiomMonthlyPrice,
    required this.finishPrice,
    required this.id,
    required this.image,
    required this.name,
    required this.liked,
    required this.inCart,
    required this.cartAmount,
    required this.selectedToBuy,
    required this.isXitProduct
  });

  ProductHive copyWith({
    String? axiomMonthlyPrice,
    int? finishPrice,
    int? id,
    String? image,
    String? name,
    bool? liked,
    bool? inCart,
    int? cartAmount,
    bool? selectedToBuy,
    bool? isXitProduct,
  }) {
    return ProductHive(
      axiomMonthlyPrice: axiomMonthlyPrice ?? this.axiomMonthlyPrice,
      finishPrice: finishPrice ?? this.finishPrice,
      id: id ?? this.id,
      image: image ?? this.image,
      name: name ?? this.name,
      liked: liked ?? this.liked,
      inCart: inCart ?? this.inCart,
      cartAmount: cartAmount ?? this.cartAmount,
      selectedToBuy: selectedToBuy ?? this.selectedToBuy,
      isXitProduct: isXitProduct ?? this.isXitProduct,
    );
  }

  @override
  String toString() {
    return 'ProductHive('
        'axiomMonthlyPrice: $axiomMonthlyPrice, '
        'finishPrice: $finishPrice, '
        'id: $id, '
        'image: $image, '
        'name: $name, '
        'liked: $liked, '
        'inCart: $inCart, '
        'cartAmount: $cartAmount, '
        'selectedToBuy: $selectedToBuy, '
        'isXitProduct: $isXitProduct'
        ')\n';
  }

  factory ProductHive.fromJson(Map<String, dynamic> json) {
    return ProductHive(
      axiomMonthlyPrice: json['axiom_monthly_price'],
      finishPrice: json['finish_price'],
      id: json['id'],
      image: json['image'],
      name: json['name'],
      liked: json['liked'],
      inCart: json['inCart'],
      cartAmount: json['cartAmount'],
      selectedToBuy: json['selectedToBuy'],
      isXitProduct: json['isXitProduct'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['axiom_monthly_price'] = this.axiomMonthlyPrice;
    data['finish_price'] = this.finishPrice;
    data['id'] = this.id;
    data['image'] = this.image;
    data['name'] = this.name;
    data['liked'] = this.liked;
    data['inCart'] = this.inCart;
    data['cartAmount'] = this.cartAmount;
    data['selectedToBuy'] = this.selectedToBuy;
    data['isXitProduct'] = this.isXitProduct;
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [name,inCart,liked,cartAmount,selectedToBuy,isXitProduct,image,id];
}

//mappers:

ProductHive toProductHive(Product product) {
  return ProductHive(
      axiomMonthlyPrice: product.axiomMonthlyPrice ?? "",
      finishPrice: product.salePrice ?? 0,
      id: product.id ?? 0,
      image: product.image ?? "",
      name: product.name ?? "",
      liked: false,
      inCart: false,
      cartAmount: 0,
      selectedToBuy: false,
      isXitProduct: product.stickers?.isNotEmpty??false
  );
}


//
// Product toProduct(ProductHive productHive) {
//   return Product(
//     axiomMonthlyPrice: productHive.axiomMonthlyPrice,
//     finishPrice: productHive.finishPrice,
//     id: productHive.id,
//     image: productHive.image,
//     name: productHive.name,
//   );
// }


// ProductHive productsToProductHive(Products product) {
//   return ProductHive(
//     axiomMonthlyPrice: product.axiomMonthlyPrice ?? '',
//     finishPrice: product.salePrice ?? 0, // Assuming salePrice maps to finishPrice
//     id: product.id ?? 0,
//     image: product.image ?? '',
//     name: product.name ?? '',
//     liked: false, // Default value, as no equivalent in `Products`
//     inCart: false, // Default value, as no equivalent in `Products`
//     cartAmount: 0, // Default value, as no equivalent in `Products`
//     selectedToBuy: false, // Default value, as no equivalent in `Products`
//     isXitProduct: product.stickers?.isNotEmpty??false, // Default value, as no equivalent in `Products`
//   );
// }

