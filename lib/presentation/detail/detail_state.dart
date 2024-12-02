part of 'detail_bloc.dart';


class DetailState {
  final Status? status;
  final Product? product;

  DetailState({
    this.status,
    this.product
});

  DetailState copyWith({Status? status, Product? product}){
    return DetailState(status: status ?? this.status,
    product: product ?? this.product);
  }
}
