import 'package:dio/dio.dart';
import 'package:texnomart/data/repository/repository.dart';
import 'package:texnomart/data/source/remote/api/api_service.dart';
import 'package:texnomart/data/source/remote/response/product.dart';
import 'package:texnomart/data/source/remote/response/xit_products.dart';

import '../../di/di.dart';

class RepositoryImpl extends Repository{
  final api = getIt<ProductsApi>();

  @override
  Future<XitProducts> getXitProducts() async {
    //try{
      return await api.getXitProducts();
   // } on DioException{
   //   rethrow;
   // }
  }

}