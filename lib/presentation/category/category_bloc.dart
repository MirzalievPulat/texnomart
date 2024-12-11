import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:texnomart/data/repository/repository.dart';
import 'package:texnomart/data/source/local/model/product_hive.dart';
import 'package:texnomart/data/source/local/model/product_hive.dart';
import 'package:texnomart/data/source/local/model/top_category.dart';
import 'package:texnomart/di/di.dart';

import '../home/home_bloc.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final repository = getIt.get<Repository>();

  CategoryBloc() : super(CategoryState()) {
    on<InitCategory>((event, emit) async {
      emit(state.copyWith(status: Status.loading));
      try {
        print("initCategory slug: ${event.slug}");
        final results = await Future.wait([
          repository.getTopCategories(event.slug),
          repository.getSelectedCategory(event.slug),
        ]);

        final topCategoryModels = results[0] as List<TopCategoryModel>;
        final productsAllCategory = results[1] as List<ProductHive>;
        print("category_bloc: $topCategoryModels");
        emit(state.copyWith(
            status: Status.success, topCategory: topCategoryModels,allProducts: productsAllCategory));
      } on DioException catch (e) {
        emit(state.copyWith(status: Status.error, errorMessage: e.message));
      }
    });
  }


}
