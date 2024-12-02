import 'package:flutter/material.dart';
import 'package:texnomart/data/source/remote/response/product.dart';
import 'package:texnomart/presentation/components/product_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              surfaceTintColor: Colors.transparent,
              backgroundColor: Colors.yellow,
              title: const Text(
                "Smartfonlar",
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  surfaceTintColor: Colors.transparent,
                  floating: true,
                  pinned: true,
                  expandedHeight: 96,backgroundColor: Colors.white,
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
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Text(
                                    "Samsung smartfonlari",
                                    style: TextStyle(color: Colors.black),
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
                          return const ProductWidget(product: Product(),);
                        },
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
