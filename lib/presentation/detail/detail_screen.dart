import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/extensions.dart';
import '../home/home_bloc.dart';
import 'detail_bloc.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetailBloc, DetailState>(
      listener: (context, state) {},
      builder: (context, state) {
        if(state.status == Status.loading){
          return const Center(child: CircularProgressIndicator(color: Colors.yellow,),);
        }
        if(state.status == Status.error){
          return Center(child: Text(state.errorMessage??"unknown error"),);
        }

        final isLiked = state.product?.liked ?? false;
        final image = state.product?.image ?? "";
        final name = state.product?.name ?? "";

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: Text(
              state.product?.name ?? "",
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share_outlined,
                    color: Colors.black,
                    size: 20,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.balance,
                    color: Colors.black,
                    size: 20,
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: InkWell(
                  borderRadius: BorderRadius.circular(32),
                  onTap: (){
                    context.read<DetailBloc>().add(DetailLikeClick());
                  },
                  child: Icon(
                    (isLiked) ? Icons.favorite : Icons.favorite_outline,
                    color: (isLiked) ? Colors.red : Colors.black,
                    size: 20,
                  ),
                ),
              )
            ],
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: SizedBox(
                    height: 230,
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: _buildAvailability(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      name,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: _buildBasketContainer(
                      context,
                      formatToSum(state.product?.finishPrice ?? 0),
                      state.product?.axiomMonthlyPrice,
                      state.payMethods),
                ),
                const SizedBox(
                  height: 16,
                ),
                _buildInfoRow("Do'konlarda mavjudligi"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(
                    thickness: 0.6,
                    color: Colors.grey[300],
                    height: 0,
                  ),
                ),
                _buildInfoRow("Tavsif"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(
                    thickness: 0.6,
                    color: Colors.grey[300],
                    height: 0,
                  ),
                ),
                _buildInfoRow("Xususiyatlari"),
                _buildAboutProductRow('Brend', 'Aksion'),
                _buildAboutProductRow('Unumdorligi', '0.5 kg/daq'),
                _buildAboutProductRow('Quvvati', '220 Vt'),
                _buildAllFeatures(context),
                _buildCommentsRow(12),
                const SizedBox(
                  height: 24,
                ),
                Divider(
                  thickness: 10,
                  color: Colors.grey[100],
                  height: 0,
                ),
                _buildBehaviourSupports(
                    Iconsax.box,
                    'Qanday qilib olish usullari:\n',
                    "olib ketish yetkazib berish"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(
                    thickness: 0.6,
                    color: Colors.grey[300],
                    height: 0,
                  ),
                ),
                _buildBehaviourSupports(Iconsax.card, "Mahsulot to'lov usuli:",
                    "Humo, UzCard,\nterminal, pul o'tkazmasi, naqd pul"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(
                    thickness: 0.6,
                    color: Colors.grey[300],
                    height: 0,
                  ),
                ),
                _buildBehaviourSupports(Iconsax.security, "", 'Kafolat'),
                _buildAddBasket(context, true),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildAddBasket(BuildContext context, bool isAdded) {
    return Card(
      elevation: 10,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () async {},
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: ShapeDecoration(
              color: isAdded ? const Color(0xFFffc300) : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Text(
                  isAdded ? "Savatchaga qo'shish" : "Savatchada",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'PaynetB',
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAvailability() {
    return const Row(
      children: [
        Text(
          "Mavjud",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.w400),
        ),
        Spacer(),
        Text(
          "Atr: 3105",
          style: TextStyle(color: Colors.black54, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildBasketContainer(BuildContext context, String? price,
      String? credit, List<(String name, String image)> payment) {
    print("credit: $credit");
    final credit1 = credit?.substring(0, credit.indexOf(" /")) ?? "------";
    final credit2 = credit?.substring(credit.indexOf("/")) ?? "-------";
    final credit11 = credit1.substring(0,credit1.length-3);
    print("credit1: $credit1 credit2: $credit2");
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 1, color: Colors.grey[300] ?? Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: price ?? '',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              const TextSpan(
                text: " so'm",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ])),
            const SizedBox(
              height: 32,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  const Text(
                    "Muddatli to'lovga ",
                    style: TextStyle(fontSize: 12),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        credit11,
                        style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      )),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    credit2,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12),
              child: Text(
                "Siz buyurtmani 12 oydan 24 oygacha muddatli to'lovga rasmiyalashtirishingiz mumkin",
                style:
                    TextStyle(fontSize: 12, color: Colors.black54, height: 1.2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: InkWell(
                onTap: () async {},
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: ShapeDecoration(
                    color: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: Text(
                        "Savatchaga qo'shish",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[200],
              height: 0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Muddatli to'lovni rasmiylashtirayotganingizda, bizdan va hamkorlardan eng ma'qul takliflarga ega bo'ling.",
                style:
                    TextStyle(fontSize: 12, color: Colors.black54, height: 1.2),
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(16)),
                        child: Image.asset(payment[index].$2,
                            height: 55, width: 55),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        payment[index].$1,
                        style: const TextStyle(
                            fontSize: 10, color: Colors.black54),
                      )
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 16,
                  );
                },
                itemCount: payment.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding:
            const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 16),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
              size: 16,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAboutProductRow(String title, String power) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16.0),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            Text(
              power,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAllFeatures(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () {
          // add to database
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: ShapeDecoration(
            color: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: Text(
                "Barcha xususiyatlar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCommentsRow(int? reviewsCount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16.0),
      child: Row(
        children: [
          Text(
            "Sharhlar ${reviewsCount ?? 0}",
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Row(
            children: [
              Icon(
                Icons.star_rate_rounded,
                size: 14,
                color: Colors.grey[500],
              ),
              Icon(
                Icons.star_rate_rounded,
                size: 14,
                color: Colors.grey[500],
              ),
              Icon(
                Icons.star_rate_rounded,
                size: 14,
                color: Colors.grey[500],
              ),
              Icon(
                Icons.star_rate_rounded,
                size: 14,
                color: Colors.grey[500],
              ),
              Icon(
                Icons.star_rate_rounded,
                size: 14,
                color: Colors.grey[500],
              ),
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey,
            size: 18,
          ),
        ],
      ),
    );
  }

  Widget _buildBehaviourSupports(IconData icon, String title, String ways) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: title,
                  style: const TextStyle(fontSize: 14, color: Colors.grey)),
              TextSpan(
                  text: ways,
                  style: const TextStyle(fontSize: 14, color: Colors.black))
            ])),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget _buildCustomDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Divider(
        color: Colors.grey.withOpacity(0.3),
      ),
    );
  }

  Widget _buildCustomThicknessDivider() {
    return Divider(
      color: Colors.grey.withOpacity(0.3),
      thickness: 8,
    );
  }
}
