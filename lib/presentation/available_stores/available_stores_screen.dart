import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:texnomart/data/source/remote/response/available_strores/available_stores.dart';
import 'package:texnomart/presentation/map_screen/map_screen.dart';

import '../../data/repository/repository.dart';
import '../../di/di.dart';

class AvailableStoresScreen extends StatefulWidget {
  final int id;

  const AvailableStoresScreen({super.key, required this.id});

  @override
  State<AvailableStoresScreen> createState() => _AvailableStoresScreenState();
}

class _AvailableStoresScreenState extends State<AvailableStoresScreen> {
  final repository = getIt.get<Repository>();
  late final List<StoreAddress> as;
  bool loading = true;

  @override
  void initState() {
    getAvailableStores();
    super.initState();
  }

  Future<void> getAvailableStores() async {
    print("getAvailableStores started");
    setState(() {
      loading = true;
    });
    try {
      as = await repository.getAvailableStores(widget.id);
      print("getAvailableStores result: ${as}");
    } on DioException catch (e) {
      print("getAvailableStores error: ${e.message}");
    }

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          "Do'konlarda mavjud",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: (loading)
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.yellow,
              ),
            )
          : ListView.separated(
              itemBuilder: (context, index) {
                return Divider(
                  color: Colors.grey[100],
                  height: 0,
                  thickness: 1,
                  endIndent: 16,
                  indent: 16,
                );
              },
              separatorBuilder: (context, index) {
                return InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MapScreen(storeAddress: as[index],),));
                },child: addressItem(as[index]));
              },
              itemCount: as.length),
    );
  }
}

Widget addressItem(StoreAddress storeAddress) => Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset("assets/images/location.png",height: 28,width: 28,),
          const SizedBox(
            width: 16,
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                storeAddress.address ?? "",
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Du-yak(${storeAddress.workTime})",
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ],
          )),
          const SizedBox(
            width: 8,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.grey,
          )
        ],
      ),
    );
