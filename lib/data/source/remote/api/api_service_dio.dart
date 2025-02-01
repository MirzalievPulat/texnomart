


// import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:texnomart/data/source/remote/response/category_items/category_items.dart';
import 'package:texnomart/data/source/remote/response/store_locations/store_locations.dart';
import 'package:texnomart/data/source/remote/response/store_locations/store_locations.dart';

class ApiServiceDio{
  final Dio _dio;

  ApiServiceDio() : _dio = Dio(
    BaseOptions(
      baseUrl: "https://gateway.texnomart.uz/api/",
      receiveDataWhenStatusError: true,
    ),
  ) {
    // Add ChuckerDioInterceptor for network debugging
    // _dio.interceptors.add(ChuckerDioInterceptor());
  }

  Future<CategoryItems> getCategoryItems(String slug)async {
    try{
      final response = await _dio.get("common/v1/search/filters",
          queryParameters: {
            "category_all":slug,
            "sort":"-popular",
            "page":"1",
          });
      print("Response-> ${response}");
      final CategoryItems categoryItems = CategoryItems.fromJson(response.data);
      return categoryItems;
    } on DioException catch(e){
      rethrow;
    }
  }

  Future<StoreLocations> getBranches()async{
    final dio = Dio();
    final response = await dio.get('https://gateway.texnomart.uz/api/web/v1/region/stores-list');
    return StoreLocations.fromJson(response.data);
  }
}