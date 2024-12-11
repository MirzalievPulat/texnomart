import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:texnomart/data/source/local/model/product_hive.dart';

class HiveHelper {
  // static final HiveHelper _instance = HiveHelper._internal();
  //
  // HiveHelper._internal();
  //
  // factory HiveHelper() {
  //   return _instance;
  // }

  static late Box<ProductHive?> productHiveBox;

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    Hive.registerAdapter(ProductHiveAdapter());
    productHiveBox = await Hive.openBox("ProductHives");
  }

  void putProductHive(ProductHive productHive) {
    productHiveBox.put(productHive.id,productHive);
  }


  void deleteProductHive(ProductHive productHive) {
    productHiveBox.delete(productHive.id);
  }

  List<ProductHive> getProductHives() {
    final list =  productHiveBox.values.toList();
    return list.whereType<ProductHive>().toList();
  }

  List<ProductHive> getProductInCart() {
    final list = getProductHives();
    final result = list.where((element) => element.inCart == true && element.cartAmount >=1,).toList();
    return result;
  }




}