part of 'liked_bloc.dart';

class LikedState {
  final Status? status;
  final List<ProductHive>? likedProducts;
  final String? errorMessage;

  LikedState({this.status, this.likedProducts, this.errorMessage});

  LikedState copyWith({
    Status? status,
    List<ProductHive>? likedProducts,
    String? errorMessage
  }) {
    return LikedState(
        status: status ?? this.status,
        likedProducts: likedProducts ?? this.likedProducts,
        errorMessage: errorMessage ?? this.errorMessage
    );
  }
}