import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/data/source/local/repository/hive_repository.dart';
import 'package:texnomart/di/di.dart';

import '../../data/source/local/model/product_hive.dart';
import '../home/home_bloc.dart';

part 'liked_event.dart';
part 'liked_state.dart';

class LikedBloc extends Bloc<LikedEvent, LikedState> {
  final hiveHelper = getIt.get<HiveHelper>();
  LikedBloc() : super(LikedState()) {
    on<RefreshLiked>((event, emit) {
      print("liked refresh");
      _refresh(emit);
    });

    on<LikedClick>((event,emit){
      print("liked likeClick");
      hiveHelper.putProductHive(event.productHive.copyWith(liked: false));
      _refresh(emit);
    });

    on<LikedCartClick>((event,emit){
      print("liked likeClick");
      hiveHelper.putProductHive(event.productHive.copyWith(inCart: true,cartAmount: 1));
      _refresh(emit);
    });
  }
  void _refresh(Emitter<LikedState> emit){
    print("refreshLiked liked Bloc");
    emit(state.copyWith(status: Status.loading));
    try{
      final list = hiveHelper.getProductHives();
      final result = list.where((element) => element.liked).toList();
      print("Liked_block list of liked: $result");
      emit(state.copyWith(status: Status.success, likedProducts: result));
    } catch(e){
      emit(state.copyWith(status: Status.error,errorMessage: e.toString()));
    }
  }
}
