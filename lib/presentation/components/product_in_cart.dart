import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:texnomart/data/source/local/model/product_hive.dart';
import 'package:texnomart/data/source/local/repository/hive_repository.dart';
import 'package:texnomart/di/di.dart';

import '../../utils/extensions.dart';

class ProductInCart extends StatefulWidget {
  final ProductHive productHive;
  final Function(ProductHive) deletClick;

  // final Function(ProductHive) likeClick;
  // final Function(ProductHive) checkboxClick;
  const ProductInCart({
    super.key,
    required this.productHive,
    required this.deletClick,
  });

  @override
  State<ProductInCart> createState() => _ProductInCartState();
}

class _ProductInCartState extends State<ProductInCart> {
  HiveHelper hiveHelper = getIt.get<HiveHelper>();

  late ProductHive product;
  late String image;
  late String name;
  late String price;
  late String credit;
  late int count;
  late bool liked;

  @override
  void initState() {
    product = widget.productHive;
    image = product?.image ?? "";
    name = product?.name ?? "";
    price = formatToSum(product?.finishPrice ?? 0);
    credit = product?.axiomMonthlyPrice ?? "";
    count = product?.cartAmount ?? 0;
    liked = product?.liked ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Product Item:${widget.productHive.name}");
    return Container(
      height: 180,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Colors.grey[100] ?? Colors.grey, BlendMode.modulate),
                  child: CachedNetworkImage(
                    imageUrl: image,
                    placeholder: (context, url) => Image.asset(
                      "assets/images/placeholder.png",
                      fit: BoxFit.cover,
                    ),
                    errorWidget: (context, url, error) => Image.asset(
                      "assets/images/placeholder.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            name,
                            maxLines: 2,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 32,
                        ),
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                            side: const BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                            value: false,
                            onChanged: (value) {},
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${price} so'm",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          IntrinsicWidth(
                            child: Container(
                              alignment: Alignment.topLeft,
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                                child: Text(
                                  credit,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            padding: const EdgeInsets.symmetric(vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Colors.grey[300] ?? Colors.grey,
                                    width: 1)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      --count;
                                    });
                                    if (count != 1) {
                                      hiveHelper.putProductHive(
                                          product.copyWith(cartAmount: count));
                                    }
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                    ),
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: Text(
                                    count.toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      ++count;
                                    });
                                    if (count != 1) {
                                      hiveHelper.putProductHive(
                                          product.copyWith(cartAmount: count));
                                    }
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                    ),
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  liked = !liked;
                                });
                                product = product.copyWith(liked: liked);
                                hiveHelper.putProductHive(product);
                              },
                              child: Icon(
                                (liked)
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                color: (liked) ? Colors.red : Colors.grey[500],
                                size: 22,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: InkWell(
                              onTap: () {
                                widget.deletClick(product);
                              },
                              child: Icon(
                                Icons.delete_outline,
                                color: Colors.grey[500],
                                size: 22,
                              ),
                            ),
                          ),
                        ],
                      ))
                ],
              ))
        ],
      ),
    );
    ;
  }
}
