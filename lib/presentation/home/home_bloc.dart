import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/data/repository/repository.dart';
import 'package:texnomart/data/source/local/model/product_hive.dart';
import 'package:texnomart/di/di.dart';

import '../../data/source/remote/response/xit_products/product.dart';


part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Repository repository = getIt.get<Repository>();
  HomeBloc() : super(HomeState())  {
    on<RefreshHome>((event, emit) async{
      print("refreshHome home Bloc");
      emit(state.copyWith(status: Status.loading));
      try{
        final result = await repository.getXitProducts();
        emit(state.copyWith(status: Status.success, xitProducts: result));
        print("#####################Xit products#################################");
        for(ProductHive p in result){
          print(p);
        }
      } on DioException catch(e){
        emit(state.copyWith(status: Status.error,errorMessage: e.response?.statusCode.toString()??"aaa"));
      }
    });
  }
}
