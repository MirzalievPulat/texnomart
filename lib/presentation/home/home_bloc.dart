import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/data/repository/repository.dart';
import 'package:texnomart/data/source/remote/response/xit_products.dart';
import 'package:texnomart/di/di.dart';

import '../../data/source/remote/response/product.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Repository repository = getIt.get<Repository>();
  HomeBloc() : super(HomeState())  {
    on<RefreshHome>((event, emit) async{
      print("ishla home Bloc");
      emit(state.copyWith(status: Status.loading));
      try{
        print("ishla1");
        final result = await repository.getXitProducts();
        print("ishla2");
        print("homebloc xitProducts: ${result.datas?.products?.length}");
        emit(state.copyWith(status: Status.success, xitProducts: result!.datas!.products));
      } on DioException catch(e){
        print(e.error);
        print(e.message);
        print(e.response);
        print(e.type);
        print("ishla3");
        emit(state.copyWith(status: Status.error,errorMessage: e.response?.statusCode.toString()??"aaa"));
      }
    });
  }
}
