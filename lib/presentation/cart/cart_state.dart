part of 'cart_bloc.dart';

class CartState {
  final Status? status;
  final List<ProductHive>? cartProducts;
  final String? errorMessage;

  CartState({this.status,
    this.cartProducts,
    this.errorMessage});

  CartState copyWith(
      {Status? status, List<ProductHive>? cartProducts, String? errorMessage}) {
    return CartState(
        status: status ?? this.status,
        cartProducts: cartProducts ?? this.cartProducts,
        errorMessage: errorMessage ?? this.errorMessage);
  }
}
