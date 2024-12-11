import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/source/local/model/product_hive.dart';
import 'package:texnomart/presentation/container/container_bloc.dart';
import 'package:texnomart/presentation/detail/detail_screen.dart';
import 'package:texnomart/presentation/home/home_bloc.dart';
import 'package:texnomart/presentation/liked/liked_bloc.dart';
import 'package:texnomart/utils/extensions.dart';

import '../detail/detail_bloc.dart';
import 'cart_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int last = -1;

    return BlocListener<ContainerBloc, ContainerState>(
  listener: (context, state) {
    print("cart ichida productInCard qanchaligi: ${state.productInCard}");
    if(state.productInCard != last){
      context.read<CartBloc>().add(RefreshCart());
    }
  },
  child: BlocConsumer<CartBloc, CartState>(
      listener: (context, state) {
        print("listener -> ");
        print("State: state.cartProducts");
        if (state.cartProducts != null) {
          for (int i = 0; i < state.cartProducts!.length; i++) {
            print("-> ${state.cartProducts?[i].name}");
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: const Text(
              "Savatcha",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          body: RefreshIndicator(
            backgroundColor: Colors.yellow,
            color: Colors.black,
            onRefresh: () {
              print("cartscreen onrefresh");
              final completer = Completer<void>();
              context.read<CartBloc>().add(RefreshCart(completer: completer));
              return completer.future;
            },
            child: Builder(builder: (context) {
              return switch (state.status) {
                null => const SizedBox(),
                Status.loading => const Center(
                    child: CircularProgressIndicator(
                      color: Colors.yellow,
                    ),
                  ),
                Status.error => Center(
                    child: Text(state.errorMessage ?? "unknown error"),
                  ),
                Status.success => (state.cartProducts?.isEmpty ?? true)
                    ? emptyState()
                    : notEmptyState(state),
              };
            }),
          ),
        );
      },
    ),
);
  }

  SingleChildScrollView notEmptyState(CartState state) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                const Text(
                  "Tanlanganlarni o'chirish",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Text(
                      "Hammasini tanlash",
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    const SizedBox(
                      width: 4,
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(
              thickness: 1,
              height: 0,
              color: Colors.grey[100],
            ),
          ),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final product = state.cartProducts?[index];
                return (product != null)
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlocProvider(
                                  create: (context) =>
                                      DetailBloc()..add(InitEvent(product)),
                                  child: const DetailScreen(),
                                ),
                              )).then(
                            (value) {
                              context.read<CartBloc>().add(RefreshCart());
                            },
                          );
                        },
                        child: _productItem(
                          product,
                          (product) {
                            print("cart_screen delete click:${product.name}");
                            context
                                .read<CartBloc>()
                                .add(CartDeleteClick(product));
                            context.read<ContainerBloc>().add(CalculateCart());
                          },
                          context
                        )
                        // ProductInCart(
                        //   productHive: product,
                        //   deletClick: (product) {
                        //     print("cart_screen delete click:${product.name}");
                        //     context
                        //         .read<CartBloc>()
                        //         .add(CartDeleteClick(product));
                        //   },
                        // ),
                        )
                    : const SizedBox();
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 1,
                  height: 0,
                  endIndent: 16,
                  indent: 16,
                  color: Colors.grey[100],
                );
              },
              itemCount: state.cartProducts?.length ?? 0)
        ],
      ),
    );
  }

  Center emptyState() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.grey,
            size: 48,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Savatda hali hech narsa yo'q",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 32,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.yellow),
            child: const Text(
              "Xarid qilishga o'ting",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }

  _productItem(ProductHive product, Function(ProductHive) myDeleteClick,BuildContext context) =>
      Container(
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
                      imageUrl: product.image,
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
                              product.name,
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
                              "${formatToSum(product.finishPrice)} so'm",
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
                                    product.axiomMonthlyPrice,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      context.read<CartBloc>().add(CartMinusClick(product));
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
                                      product.cartAmount.toString(),
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      context.read<CartBloc>().add(CartPlusClick(product));
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
                                  context.read<CartBloc>().add(CartLikeClick(product));
                                },
                                child: Icon(
                                  (product.liked)
                                      ? Icons.favorite
                                      : Icons.favorite_outline,
                                  color: (product.liked)
                                      ? Colors.red
                                      : Colors.grey[500],
                                  size: 22,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: InkWell(
                                onTap: () {
                                  myDeleteClick(product);
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
}
