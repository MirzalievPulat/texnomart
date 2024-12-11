import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/source/local/model/product_hive.dart';
import 'package:texnomart/presentation/components/product_widget.dart';
import 'package:texnomart/presentation/container/container_screen.dart';
import 'package:texnomart/presentation/detail/detail_screen.dart';
import 'package:texnomart/presentation/home/home_bloc.dart';

import '../container/container_bloc.dart';
import '../detail/detail_bloc.dart';
import 'category_bloc.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  static final pppp = ProductHive(
    axiomMonthlyPrice: "1 064 255 so'mdan / 24 oy",
    finishPrice: 13700000,
    id: 356715,
    image:
        "https://mini-io-api.texnomart.uz/catalog/product/3567/356715/205907/67b8105a-743c-47b2-a7a7-be81921838ee.webp",
    name: "Smartfon Samsung Galaxy S24 Ultra 12GB/512GB Titanium Violet",
    liked: false,
    inCart: false,
    cartAmount: 0,
    selectedToBuy: false,
    isXitProduct: false,
  );

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryBloc, CategoryState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              surfaceTintColor: Colors.transparent,
              backgroundColor: Colors.yellow,
              title: const Text(
                "Smartfonlar",
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: switch (state.status) {
              null => const SizedBox(),
              Status.loading => const Center(
                  child: CircularProgressIndicator(
                    color: Colors.yellow,
                  ),
                ),
              Status.error => Center(
                  child: Text(
                    state.errorMessage ?? "unknown error",
                  ),
                ),
              Status.success => CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      surfaceTintColor: Colors.transparent,
                      floating: true,
                      pinned: true,
                      expandedHeight: 96,
                      backgroundColor: Colors.white,
                      automaticallyImplyLeading: false,
                      title: const Row(
                        children: [
                          IntrinsicWidth(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.tune,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "Filterlar",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          IntrinsicWidth(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.swap_vert,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "Avval ommaboplar",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Icon(
                            Icons.grid_view,
                            color: Colors.black,
                          )
                        ],
                      ),
                      centerTitle: true,
                      bottom: PreferredSize(
                          preferredSize: const Size.fromHeight(46),
                          child: Container(
                            color: Colors.white,
                            height: 46,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 16),
                              child: ListView.separated(
                                  clipBehavior: Clip.none,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 4),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Text(
                                        state.topCategory?[index].name ?? "",
                                        style: const TextStyle(
                                            color: Colors.black),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      width: 8,
                                    );
                                  },
                                  itemCount: 6),
                            ),
                          )),
                    ),
                    SliverToBoxAdapter(
                      child: ColoredBox(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: 20,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 0.55,
                                    mainAxisSpacing: 16,
                                    crossAxisSpacing: 8),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BlocProvider(
                                          create: (context) => DetailBloc()
                                            ..add(InitEvent(
                                                state.allProducts?[index] ??
                                                    pppp)),
                                          child: const DetailScreen(),
                                        ),
                                      ));
                                },
                                child: ProductWidget(
                                  product: state.allProducts?[index] ?? pppp,
                                  secondCartClick: () {
                                    // Navigator.pop(context);
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => BlocProvider(
                                            create: (context) => ContainerBloc()
                                              ..add(CalculateCart()),
                                            child: ContainerScreen(),
                                          ),
                                        ));
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
            });
      },
    );
  }
}
