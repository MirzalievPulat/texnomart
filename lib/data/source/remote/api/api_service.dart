import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:texnomart/data/source/local/model/top_category.dart';
import 'package:texnomart/data/source/remote/response/available_strores/available_stores.dart';
import 'package:texnomart/data/source/remote/response/charracters/charracters.dart';
import 'package:texnomart/data/source/remote/response/description/description.dart';
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

  @GET('v1/product/characters')
  Future<Charracters> getCharracters({
    @Query('id') required int id,
  });

  @GET('v1/product/description')
  Future<Description> getDescription({
    @Query('id') required int id,
  });

  @GET('v1/product/available-stores')
  Future<AvailableStores> getAvailableStores({
    @Query('id') required int id,
  });
}