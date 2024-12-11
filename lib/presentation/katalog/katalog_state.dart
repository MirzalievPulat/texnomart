part of 'katalog_bloc.dart';


class KatalogState {
  final Status? status;
  final List<Datum>? katalogs;
  final String? errorMessage;

  KatalogState({this.status, this.katalogs, this.errorMessage});

  KatalogState copyWith({
    Status? status,
    List<Datum>? katalogs,
    String? errorMessage
  }) {
    return KatalogState(
        status: status ?? this.status,
        katalogs: katalogs ?? this.katalogs,
        errorMessage: errorMessage ?? this.errorMessage
    );
  }
}
