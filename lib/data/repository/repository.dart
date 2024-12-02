import 'package:texnomart/data/source/remote/response/product.dart';
import 'package:texnomart/data/source/remote/response/xit_products.dart';

abstract class Repository{
  Future<XitProducts> getXitProducts();
}