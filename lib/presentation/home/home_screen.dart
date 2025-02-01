import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:texnomart/data/source/local/model/product_hive.dart';
import 'package:texnomart/di/di.dart';
import 'package:texnomart/presentation/category/category_screen.dart';
import 'package:texnomart/presentation/detail/detail_screen.dart';

import '../category/category_bloc.dart';
import '../components/product_widget.dart';
import '../container/container_bloc.dart';
import '../detail/detail_bloc.dart';
import 'home_bloc.dart';

class TopCategory {
  final String name;
  final String image;
  final String slug;

  TopCategory(this.name, this.image, this.slug);
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<String> _carouselList = [
    "assets/images/carousel1.webp",
    "assets/images/carousel2.webp",
    "assets/images/carousel3.webp",
  ];

  static List<TopCategory> topCategories = [
    TopCategory(
        "Havo sovutgichlar", "assets/images/top1.png", "vse-kondicionery-5"),
    TopCategory("Smartfonlar", "assets/images/top2.png", "smartfony"),
    TopCategory("Muzlatgichlar", "assets/images/top3.png", "vse-holodilniki"),
    TopCategory("Changyutgichlar", "assets/images/top4.png", "pylesosy"),
    TopCategory("Televizorlar", "assets/images/top5.png", "televizory"),
    TopCategory("Noutbuklar", "assets/images/top6.png", "noutbuki"),
    TopCategory("Kir yuvish mashinalari", "assets/images/top7.png",
        "stiralnye-mashinki"),
    TopCategory("Qahva mashinalari", "assets/images/top8.png",
        "kofemashiny-i-kofevarki"),
    TopCategory("Planshetlar", "assets/images/top9.png", "planshety"),
    TopCategory("Fenlar", "assets/images/top10.png", "fen-dlya-volos"),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                ),
                foregroundColor: Colors.transparent,
                expandedHeight: 110,
                surfaceTintColor: Colors.transparent,
                backgroundColor: Colors.yellow,
                pinned: true,
                floating: true,
                // snap: true,
                centerTitle: true,
                title: SizedBox(
                    height: 24,
                    child: SvgPicture.asset("assets/images/logo.svg")),
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(74),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 14),
                      decoration: const BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(32),
                              bottomRight: Radius.circular(32))),
                      child: SizedBox(
                        height: 46,
                        child: TextField(
                          readOnly: true,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10),
                            alignLabelWithHint: true,
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintText: "Qidirish",
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                      ),
                    )),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: CarouselSlider(
                    options: CarouselOptions(
                        height: 150.0,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 0.9,
                        enableInfiniteScroll: true),
                    items: _carouselList.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage(i),
                                      fit: BoxFit.cover)));
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: _categories(),
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Column(children: [
                      const Row(
                        children: [
                          Text(
                            "Xit savdo",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                            "hammasi",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          SizedBox(width: 4),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: SizedBox(
                            height: 290,
                            child: switch (state.status) {
                              null => const SizedBox(),
                              Status.loading => Shimmer.fromColors(
                                  baseColor: Colors.grey[400]??Colors.grey,
                                  highlightColor: Colors.grey[100]??Colors.grey,
                                  child: _xitProducts(state.xitProducts)),
                              Status.error => Center(
                                  child: Text(
                                      state.errorMessage ?? "Unknown error")),
                              Status.success => _xitProducts(state.xitProducts),
                            }),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _categories() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Ommabop kategoriyalar",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: SizedBox(
              height: 190,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return (index == topCategories.length ~/ 2)
                        ? InkWell(
                            onTap: () {
                              context
                                  .read<ContainerBloc>()
                                  .add(GoCatalogPage());
                            },
                            child: Container(
                              height: 190,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Barcha kategoryalar",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.black,
                                    size: 16,
                                  )
                                ],
                              ),
                            ),
                          )
                        : Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BlocProvider(
                                          create: (context) => CategoryBloc()
                                            ..add(InitCategory(
                                                topCategories[index * 2].slug)),
                                          child: const CategoryScreen(),
                                        ),
                                      ));
                                },
                                child: SizedBox(
                                  height: 90,
                                  width: 120,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              topCategories[index * 2].image),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        topCategories[index * 2].name,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MultiBlocProvider(
                                          providers: [
                                            BlocProvider(
                                              create: (context) =>
                                                  CategoryBloc()
                                                    ..add(InitCategory(
                                                        topCategories[
                                                                index * 2 + 1]
                                                            .slug)),
                                            ),
                                            BlocProvider(
                                                create: (context) =>
                                                    getIt.get<ContainerBloc>())
                                          ],
                                          child: const CategoryScreen(),
                                        ),
                                      ));
                                },
                                child: SizedBox(
                                  height: 90,
                                  width: 120,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              topCategories[index * 2 + 1]
                                                  .image),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        topCategories[index * 2 + 1].name,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 10),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 12);
                  },
                  itemCount: topCategories.length ~/ 2 + 1),
            ),
          )
        ],
      ),
    );
  }

  Widget _xitProducts(List<ProductHive>? products) {
    print(products?.length);
    return (products == null)
        ? const Center(child: Text("No products"))
        : ListView.separated(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider(
                            create: (context) =>
                                DetailBloc()..add(InitEvent(products[index])),
                            child: const DetailScreen(),
                          ),
                        ));
                  },
                  child: ProductWidget(
                    product: products[index],
                    secondCartClick: () {},
                  ));
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 12,
              );
            },
            itemCount: 20);
  }
}
