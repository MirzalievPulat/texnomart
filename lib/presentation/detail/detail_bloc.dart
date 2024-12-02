import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/data/source/remote/response/product.dart';
import 'package:texnomart/presentation/home/home_bloc.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(DetailState()) {
    on<InitEvent>((event, emit) {
      emit(state.copyWith(product: event.product));
    });
  }
}
