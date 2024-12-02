import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:texnomart/data/source/remote/response/product.dart';

class ProductWidget extends StatefulWidget {
  final Product product;

  const ProductWidget({super.key, required this.product});

  @override
  State<ProductWidget> createState() => _ProductState();
}

class _ProductState extends State<ProductWidget> {
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
                  child: CachedNetworkImage(
                    imageUrl: widget.product.image ?? "",
                    placeholder: (context, url) =>
                        Image.asset("assets/images/placeholder.png"),
                    errorWidget: (context, url, error) =>
                        Image.asset("assets/images/placeholder.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          (widget.product.stickers?.any((element) =>
                                      element.name == "Xit savdo") ??
                                  false)
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
                          (widget.product.stickers?.any((element) =>
                                      element.name == "Xit savdo") ??
                                  false)
                              ? Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.blue),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 6),
                                    child: Text(
                                      "0-0-12",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                )
                              : const SizedBox()
                        ],
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 28,
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset(
                                "assets/images/heart.png",
                                color: Colors.grey,
                              ),
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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              widget.product.name??"",
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
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
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: Text(
                    widget.product.axiomMonthlyPrice??"",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
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
                  "${widget.product.finishPrice} so'm",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                const Spacer(
                  flex: 1,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.yellow, width: 1)),
                  child: const Icon(
                    size: 18,
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
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
