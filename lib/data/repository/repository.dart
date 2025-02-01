

import 'package:texnomart/data/source/local/model/product_hive.dart';
import 'package:texnomart/data/source/local/model/top_category.dart';
import 'package:texnomart/data/source/remote/response/available_strores/available_stores.dart';
import 'package:texnomart/data/source/remote/response/description/description.dart';

import '../source/remote/response/charracters/charracters.dart' as char;
import '../source/remote/response/katalog/katalog.dart';


abstract class Repository{
  Future<List<ProductHive>> getXitProducts();
  Future<Katalog> getKatalogs();
  Future<List<TopCategoryModel>> getTopCategories(String slug);
  Future<List<ProductHive>> getSelectedCategory(String slug);
  Future<List<char.Datum>> getCharracters(int id);
  Future<String> getDescription(int id);
  Future<List<StoreAddress>> getAvailableStores(int id);
}