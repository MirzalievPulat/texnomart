import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/source/local/repository/hive_repository.dart';
import 'package:texnomart/di/di.dart';

import '../cart/cart_bloc.dart';
import '../cart/cart_screen.dart';
import '../home/home_bloc.dart';
import '../home/home_screen.dart';
import '../katalog/katalog_bloc.dart';
import '../katalog/katalog_screen.dart';
import '../orders/orders_screen.dart';
import '../profile/profile_screen.dart';

part 'container_event.dart';
part 'container_state.dart';

class ContainerBloc extends Bloc<ContainerEvent, ContainerState> {
  final hiveHelper = getIt.get<HiveHelper>();
  ContainerBloc() : super(ContainerState()) {
    on<GoCatalogPage>((event, emit) {
      emit(state.copyWith(selectedIndex: 1));
    });
    on<GoCartPage>((event, emit) {
      emit(state.copyWith(selectedIndex: 2));
    });
    on<ChangePage>((event, emit) {
      emit(state.copyWith(selectedIndex: event.page));
    });
    on<CalculateCart>((event, emit) {
      final productsInCart = hiveHelper.getProductInCart();
      emit(state.copyWith(productInCard: productsInCart.length));
    });
  }
}
