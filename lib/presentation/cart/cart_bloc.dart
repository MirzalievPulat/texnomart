import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/data/source/local/model/product_hive.dart';
import 'package:texnomart/data/source/local/repository/hive_repository.dart';
import 'package:texnomart/di/di.dart';

import '../../data/source/remote/response/xit_products/product.dart';
import '../home/home_bloc.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final hive = getIt.get<HiveHelper>();
  CartBloc() : super(CartState()) {
    on<RefreshCart>((event, emit) {
      _refresh(event, emit);
    });

    on<CartDeleteClick>((event,emit){
      final product = event.productHive.copyWith(inCart: false,cartAmount: 0);
      hive.putProductHive(product);
      _refresh(event, emit);
    });

    on<CartLikeClick>((event,emit){
      final product = event.productHive.copyWith(liked:!event.productHive.liked);
      hive.putProductHive(product);
      _refresh(event, emit);
    });

    on<CartMinusClick>((event,emit){
      if(event.productHive.cartAmount > 1){
        final product = event.productHive.copyWith(cartAmount:event.productHive.cartAmount-1);
        hive.putProductHive(product);
        _refresh(event, emit);
      }

    });

    on<CartPlusClick>((event,emit){
      final product = event.productHive.copyWith(cartAmount:event.productHive.cartAmount+1);
      hive.putProductHive(product);
      _refresh(event, emit);
    });


  }

  void _refresh(event,emit){
    emit(state.copyWith(status: Status.loading));
    final result = hive.getProductInCart();
    print("fun _refresh - Result->${result.length}");
    result.forEach((element) {
      print("->${element.name}");
    },);
    emit(state.copyWith(status: Status.success,cartProducts: result,));
    if(event.completer != null){
      event.completer.complete();
    }
  }
}
