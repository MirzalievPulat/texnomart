import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import 'detail_bloc.dart';

class DetailScreen extends StatelessWidget {
  // final GetXitProducts? product;

  const DetailScreen({super.key,});
  //
  // bool isFavorite = true;
  //
  static const  isBasket = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetailBloc, DetailState>(
  listener: (context, state) {

  },
  builder: (context, state) {
    return Scaffold(
      appBar:  AppBar(
      backgroundColor: Colors.yellow,
      // leading: IconButton(
      //   onPressed: () {
      //     Navigator.pop(context, true);
      //   },
      //   icon: const Icon(Icons.arrow_back_rounded),
      // ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined,color: Colors.black,)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.balance,color: Colors.black,)),
       const Icon(Icons.favorite_outline,color: Colors.black,)
      ],
    ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: SizedBox(
                  height: 170,
                  child: Image.asset("assets/images/tv.png")),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _buildAvailability(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Text(
                "Tv tvTv tvTv tvTv tv",
                style: TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w500),
                maxLines: 2,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: _buildBasketContainer(context,"1 000 000"),
            ),
            _buildInfoRow("Do'konlarda mavjudligi"),
            _buildCustomThicknessDivider(),
            _buildInfoRow("Xususiyatlari"),
            _buildAboutProductRow('Brend', 'Aksion'),
            _buildAboutProductRow('Unumdorligi', '0.5 kg/daq'),
            _buildAboutProductRow('Quvvati', '220 Vt'),
            _buildAllFeatures(context),
            _buildCommentsRow(12),
            _buildCustomDivider(),
            _buildBehaviourSupports(
                Iconsax.box, 'Qanday qilib olish usullari:'),
            _buildCustomThicknessDivider(),
            _buildBehaviourSupports(Iconsax.card, "Mahsulot to'lov usuli:"),
            _buildCustomThicknessDivider(),
            _buildBehaviourSupports(Iconsax.security, 'Kafolat'),
            _buildAddBasket(context,true),
          ],
        ),
      ),
    );
  },
);
  }

  Widget _buildAddBasket(BuildContext context,bool isAdded) {
    return Card(
      elevation: 10,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () async {
          },
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
                  style: const TextStyle(fontFamily: 'PaynetB',
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
          style:
          TextStyle(fontFamily: 'PaynetB',color: Colors.greenAccent, fontWeight: FontWeight.w500),
        ),
        Spacer(),
        Text("Kod: 3105"),
      ],
    );
  }

  Widget _buildBasketContainer(BuildContext context,String? price) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 2, color: Colors.yellow)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '${price ?? ''}  som',
              style: const TextStyle(fontFamily: 'PaynetB',fontSize: 24, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () async {
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: ShapeDecoration(
                  color: isBasket ? const Color(0xFFffc300) : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Text(
                      isBasket ? "Savatchaga qo'shish" : "Savatchada",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PaynetB',
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
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16.0),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontFamily: 'PaynetB',fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color:Colors.grey,
              size: 18,
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
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontFamily: 'PaynetB',fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            Text(
              power,
              style: const TextStyle(fontFamily: 'PaynetB',fontSize: 16, fontWeight: FontWeight.w400),
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
            color: Colors.yellow,
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
                style: TextStyle(fontFamily: 'PaynetB',
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
    );
  }

  Widget _buildCommentsRow(int? reviewsCount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16.0),
      child: Row(
        children: [
          const Text(
            "Izohlar",
            style: TextStyle(fontFamily: 'PaynetB',fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Text(
            "${reviewsCount ?? '0'} ta izoh",
            style: const TextStyle(fontFamily: 'PaynetB',color: Colors.grey),
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

  Widget _buildBehaviourSupports(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
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
            child: Text(
              title,
              style: const TextStyle(fontFamily: 'PaynetB',
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
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
