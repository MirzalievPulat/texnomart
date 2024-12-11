part of 'category_bloc.dart';

class CategoryState {
  final Status? status;
  final List<ProductHive>? allProducts;
  final List<TopCategoryModel>? topCategory;
  final String? errorMessage;

  CategoryState({this.status, this.allProducts, this.errorMessage,this.topCategory});

  CategoryState copyWith({
    Status? status,
    List<ProductHive>? allProducts,
    List<TopCategoryModel>? topCategory,
    String? errorMessage,
  }) {
    return CategoryState(
        status: status ?? this.status,
        allProducts: allProducts ?? this.allProducts,
        topCategory: topCategory ?? this.topCategory,
        errorMessage: errorMessage ?? this.errorMessage
    );
  }
}