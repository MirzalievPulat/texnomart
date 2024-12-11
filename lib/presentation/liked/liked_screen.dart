import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/detail/detail_bloc.dart';
import 'package:texnomart/presentation/detail/detail_screen.dart';
import 'package:texnomart/presentation/home/home_bloc.dart';
import 'package:texnomart/utils/extensions.dart';

import 'liked_bloc.dart';

class LikedScreen extends StatelessWidget {
  const LikedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LikedBloc, LikedState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: const Text(
              "Sevimlilar",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                child: Text(state.errorMessage ?? "unknown error"),
              ),
            Status.success => (state.likedProducts?.isEmpty ?? true)
                ? emptyState()
                : notEmptyState(state),
          },
        );
      },
    );
  }

  Widget emptyState() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.grey,
            size: 48,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Sevimlilar ro'yxati bo'sh",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const Text(
            "Sevimli mahsulotlaringizni\nkeyinroq ko'rish yoki sotib olish\nuchun ularni sevimlilaringizga\nqo'shing",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black54),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 32,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.yellow),
            child: const Text(
              "Mahsulotlarni ko'rish",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }

  Widget notEmptyState(LikedState state) {
    return ListView.separated(
        itemBuilder: (context, index) {
          final product = state.likedProducts?[index];
          final image = product?.image ?? "";
          final name = product?.name ?? "";
          final credit = product?.axiomMonthlyPrice ?? "";
          final price = formatToSum(product?.finishPrice ?? 0);
          final inCard = product?.inCart ?? false;

          return Padding(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
              onTap: () {
                if(product != null){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) => DetailBloc()..add(InitEvent(product)),
                          child: const DetailScreen(),
                        ),
                      )).then((value) {
                        context.read<LikedBloc>().add(RefreshLiked());
                      },);
                }
              },
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: IntrinsicHeight(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.grey[100]),
                              padding: const EdgeInsets.all(8),
                              child: ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                    Colors.grey[100] ?? Colors.grey,
                                    BlendMode.modulate),
                                child: CachedNetworkImage(
                                  imageUrl: image,
                                  placeholder: (context, url) => Image.asset(
                                    "assets/images/placeholder.png",
                                    fit: BoxFit.cover,
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Image.asset(
                                    "assets/images/placeholder.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (product != null) {
                                      context
                                          .read<LikedBloc>()
                                          .add(LikedClick(product));
                                    }
                                  },
                                  child: const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 18,
                                  ),
                                ),
                                const Icon(
                                  Icons.balance,
                                  color: Colors.grey,
                                  size: 18,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: IntrinsicHeight(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                name,
                                style: TextStyle(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                              )),
                              IntrinsicWidth(
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8),
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
                              ),
                              Row(
                                children: [
                                  Text(
                                    "$price so'm",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const Spacer(),
                                  InkWell(
                                    borderRadius: BorderRadius.circular(12),
                                    onTap: () {
                                      if (inCard) {
                                        //go katalog
                                      } else {
                                        if (product != null) {
                                          context
                                              .read<LikedBloc>()
                                              .add(LikedCartClick(product));
                                        }
                                      }
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 8),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                              color: (inCard)
                                                  ? Colors.black
                                                  : Colors.yellow,
                                              width: 1)),
                                      child: Icon(
                                        size: 18,
                                        (inCard)
                                            ? Icons.shopping_cart
                                            : Icons.shopping_cart_outlined,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey[100],
            height: 0,
            thickness: 1,
            indent: 16,
            endIndent: 16,
          );
        },
        itemCount: state.likedProducts?.length ?? 0);
  }
}
