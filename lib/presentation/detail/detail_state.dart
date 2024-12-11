part of 'detail_bloc.dart';


class DetailState {
  final Status? status;
  final ProductHive? product;
  final String? errorMessage;
  final List<(String name,String image)> payMethods = [
    ("Axiom nasiya","assets/images/pay1.png"),
    ("Tehnoboon","assets/images/pay2.png"),
    ("Payme nasiya","assets/images/pay3.png"),
    ("Alif","assets/images/pay4.png"),
    ("Solfy","assets/images/pay5.png"),
    ("Anorbank","assets/images/pay6.png"),
    ("Opencard","assets/images/pay7.png"),
  ];

  DetailState({
    this.status,
    this.product, this.errorMessage,
});

  DetailState copyWith({Status? status, ProductHive? product}){
    return DetailState(status: status ?? this.status,
    product: product ?? this.product,
    errorMessage:errorMessage??this.errorMessage);
  }
}
