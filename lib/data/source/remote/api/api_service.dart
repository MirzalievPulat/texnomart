import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:texnomart/data/source/remote/response/product.dart';
import 'package:texnomart/data/source/remote/response/xit_products.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ProductsApi{
  factory ProductsApi(Dio dio, {String baseUrl}) = _ProductsApi;
  
  @GET("/v1/home/special-products?type=hit_products")
  Future<XitProducts> getXitProducts();
}