import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/data/source/remote/response/katalog/katalog.dart';

import '../../data/repository/repository.dart';
import '../../data/source/remote/response/xit_products/product.dart';
import '../../di/di.dart';
import '../home/home_bloc.dart';

part 'katalog_event.dart';
part 'katalog_state.dart';

class KatalogBloc extends Bloc<KatalogEvent, KatalogState> {
  final Repository repository = getIt.get<Repository>();
  KatalogBloc() : super(KatalogState()) {
    on<RefreshKatalog>((event, emit) async {
      print("ishla katalog Bloc");
      emit(state.copyWith(status: Status.loading));
      try{
        print("katalog ishla1");
        final result = await repository.getKatalogs();
        emit(state.copyWith(status: Status.success, katalogs: result.data.data));
      } on DioException catch(e){
        emit(state.copyWith(status: Status.error,errorMessage: e.response?.statusCode.toString()??"unknown errorr"));
      }
    });
  }
}
