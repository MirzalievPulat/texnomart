import 'package:dio/dio.dart';
import 'package:texnomart/data/repository/repository.dart';
import 'package:texnomart/data/source/local/model/product_hive.dart';
import 'package:texnomart/data/source/local/model/top_category.dart';
import 'package:texnomart/data/source/remote/api/api_service.dart';
import 'package:texnomart/data/source/remote/api/api_service_dio.dart';
import 'package:texnomart/data/source/remote/response/category_items/category_items.dart';
import 'package:texnomart/data/source/remote/response/category_top/category_top.dart';
import 'package:texnomart/data/source/remote/response/katalog/katalog.dart';
import 'package:texnomart/data/source/remote/response/xit_products/product.dart' as ProductXit;
import 'package:texnomart/presentation/home/home_screen.dart';


import '../../di/di.dart';
import '../source/remote/response/xit_products/xit_products.dart';

class RepositoryImpl extends Repository {
  final api = getIt<ProductsApi>();
  final apiDio = getIt<ApiServiceDio>();

  @override
  Future<List<ProductHive>> getXitProducts() async {
    try{
    final xit =  await api.getXitProducts();
    List<ProductXit.Product> list = xit.datas?.products??[];
    return list.map((e) => toProductHive(e)).toList();
    } on DioException{
      rethrow;
    }
  }

  @override
  Future<Katalog> getKatalogs() {
    try{
      return api.getCatalogs();
    } on DioException{
      rethrow;
    }
  }

  @override
  Future<List<TopCategoryModel>> getTopCategories(String slug) async{
    try{
      CategoryTop categoryTop =  await api.getTopCategories(slug);
      List<Parent> list = categoryTop.data.categories;
      return list.map((e) => parentToTopCategoryModel(e)).toList();
    } on DioException{
      rethrow;
    }

  }

  @override
  Future<List<ProductHive>> getSelectedCategory(String slug) async{
    try{
      CategoryItems productAllCategory =  await apiDio.getCategoryItems(slug);
      List<Product> list = productAllCategory.data?.products??[];
      return list.map((e) => fromProductToProductHive(e)).toList();
    } on DioException{
      rethrow;
    }
  }
}
