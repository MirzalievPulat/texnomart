

import 'package:texnomart/data/source/local/model/product_hive.dart';
import 'package:texnomart/data/source/local/model/top_category.dart';
import 'package:texnomart/data/source/remote/response/katalog/katalog.dart';


abstract class Repository{
  Future<List<ProductHive>> getXitProducts();
  Future<Katalog> getKatalogs();
  Future<List<TopCategoryModel>> getTopCategories(String slug);
  Future<List<ProductHive>> getSelectedCategory(String slug);
}