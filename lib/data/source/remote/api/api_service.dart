import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:texnomart/data/source/local/model/top_category.dart';
import 'package:texnomart/data/source/remote/response/katalog/katalog.dart';
import 'package:texnomart/presentation/home/home_screen.dart';


import '../response/category_top/category_top.dart';
import '../response/xit_products/xit_products.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ProductsApi{
  factory ProductsApi(Dio dio, {String baseUrl}) = _ProductsApi;
  
  @GET("v1/home/special-products?type=hit_products")
  Future<XitProducts> getXitProducts();

  @GET("v1/header/popup-menu-catalog")
  Future<Katalog> getCatalogs();

  @GET("v1/category/chips")
  Future<CategoryTop> getTopCategories(@Query("slug") String slug);

  // @GET('common/v1/search/filters')
  // Future<ProductAllCategory> getSelectedCategory({
  //   @Query('category_all') required String slug,
  //   @Query('sort') String sort = '-popular',
  //   @Query('page') int page = 1,
  // });
}