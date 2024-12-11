import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/source/local/model/product_hive.dart';
import 'package:texnomart/data/source/local/repository/hive_repository.dart';
import 'package:texnomart/di/di.dart';
import 'package:texnomart/utils/extensions.dart';

import '../container/container_bloc.dart';


class ProductWidget extends StatefulWidget {
  final ProductHive product;
  final Function secondCartClick;

  const ProductWidget(
      {super.key,
      required this.product, required this.secondCartClick,
      });

  @override
  State<ProductWidget> createState() => _ProductState();
}

class _ProductState extends State<ProductWidget> {
  final hive = getIt.get<HiveHelper>();
  late List<ProductHive> productHives;
  late ProductHive productHive;
  late bool isLiked;
  late bool isInCard;

  @override
  void initState() {
    productHives = hive.getProductHives();
    productHive = productHives.firstWhere((element) => element.id == widget.product.id,orElse:()=> widget.product) ;
    isLiked = productHive.liked;
    isInCard = productHive.inCart;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey[100],
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 140,
                  width: 140,
                  child: ColorFiltered(colorFilter: ColorFilter.mode(Colors.grey[100]??Colors.grey, BlendMode.modulate),
                    child: CachedNetworkImage(
                      imageUrl: widget.product.image ?? "",
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
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          (widget.product.isXitProduct)
                              ? Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.red),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    child: Text(
                                      "Xit savdo",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                          const Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                              hive.putProductHive(productHive.copyWith(liked: isLiked));
                            },
                            child: Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: (isLiked)
                                      ? const Icon(
                                          Icons.favorite_outlined,
                                          color: Colors.red,
                                        )
                                      : const Icon(
                                          Icons.favorite_outline,
                                          color: Colors.grey,
                                        )),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            height: 28,
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset(
                                "assets/images/balance.png",
                                color: Colors.grey,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                widget.product.name ?? "",
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: IntrinsicWidth(
              child: Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: Text(
                    widget.product.axiomMonthlyPrice ?? "",
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 170,
            child: Row(
              children: [
                Text(
                  "${formatToSum(widget.product.finishPrice ?? 0)} so'm",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    if (isInCard) {
                      widget.secondCartClick();
                      context.read<ContainerBloc>().add(GoCartPage());
                    } else {
                      hive.putProductHive(productHive.copyWith(inCart: true,cartAmount: 1));
                      context.read<ContainerBloc>().add(CalculateCart());
                    }
                    setState(() {
                      isInCard = true;
                    });
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: (isInCard) ? Colors.black : Colors.yellow,
                            width: 1)),
                    child: Icon(
                      size: 18,
                      (isInCard)
                          ? Icons.shopping_cart
                          : Icons.shopping_cart_outlined,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
