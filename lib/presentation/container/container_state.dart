part of 'container_bloc.dart';

class ContainerState {
  final int? selectedIndex;
  final Status? status;
  final String? errorMessage;
  final int? productInCard;

  ContainerState({this.productInCard=0, this.selectedIndex, this.status, this.errorMessage});

  ContainerState copyWith({
    Status? status,
    int? selectedIndex,
    int? productInCard,
    String? errorMessage
  }) {
    return ContainerState(
        status: status ?? this.status,
        selectedIndex: selectedIndex?? this.selectedIndex,
        productInCard: productInCard?? this.productInCard,
        errorMessage: errorMessage ?? this.errorMessage
    );
  }
}
