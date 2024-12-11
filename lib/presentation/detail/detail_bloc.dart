import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/data/source/local/model/product_hive.dart';
import 'package:texnomart/data/source/local/repository/hive_repository.dart';
import 'package:texnomart/di/di.dart';
import 'package:texnomart/presentation/home/home_bloc.dart';

import '../../data/source/remote/response/xit_products/product.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final hiveHelper = getIt.get<HiveHelper>();
  late ProductHive currentProduct;
  DetailBloc() : super(DetailState()) {
    on<InitEvent>((event, emit) {
      emit(state.copyWith(status: Status.loading));
      print("Detail bloc initEvent product:${event.product}");
      currentProduct = event.product;
      emit(state.copyWith(product: event.product,status: Status.success));
    });

    on<DetailLikeClick>((event, emit) {
      emit(state.copyWith(status: Status.loading));
      currentProduct = currentProduct.copyWith(liked: !currentProduct.liked);
      hiveHelper.putProductHive(currentProduct);
      emit(state.copyWith(status: Status.success,product: currentProduct));
    });
  }
}
