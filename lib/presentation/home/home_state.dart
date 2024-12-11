part of 'home_bloc.dart';

enum Status { loading, error, success }

class HomeState {
  final Status? status;
  final List<ProductHive>? xitProducts;
  final String? errorMessage;

  HomeState({this.status, this.xitProducts, this.errorMessage});

  HomeState copyWith({
    Status? status,
    List<ProductHive>? xitProducts,
    String? errorMessage
  }) {
    return HomeState(
        status: status ?? this.status,
        xitProducts: xitProducts ?? this.xitProducts,
        errorMessage: errorMessage ?? this.errorMessage
    );
  }
}
