import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/liked/liked_screen.dart';
import 'package:texnomart/presentation/map_screen/map_screen.dart';

import '../liked/liked_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
          statusBarColor: Colors.yellow,
          statusBarIconBrightness: Brightness.dark),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[80],
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 24),
                const Text(
                  textAlign: TextAlign.center,
                  "Xarid qilish, buyurtmalarni kuzatish\nva bo'lib-bo'lib to'lash uchun tizimga kiring",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                Container(
                  width: double.infinity,
                  height: 48,
                  margin:
                  const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.yellow),
                  alignment: Alignment.center,
                  child: const Text(
                    "Kirish",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                ),
                IntrinsicHeight(
                  child: Container(
                    margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    child: Column(
                      children: [
                        const Tile(name: "Aksiya", icon: Icons.percent),
                        InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) =>
                                      BlocProvider(
                                        create: (context) => LikedBloc()..add(RefreshLiked()),
                                        child: const LikedScreen(),
                                      ),));
                            },
                            child: const Tile(
                                name: "Sevimlilar",
                                icon: Icons.favorite_outline)),
                        const Tile(name: "Taqqoslash", icon: Icons.balance),
                        const Tile(
                          name: "Shahar tanlash",
                          icon: Icons.location_pin,
                          indicator: "Toshkent",
                        ),
                        const Tile(
                          name: "Ilova tili",
                          icon: Icons.language,
                          indicator: "O'z",
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                IntrinsicHeight(
                  child: Container(
                    margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {

                           Navigator.push(context, MaterialPageRoute(builder: (context) => const MapScreen(),));
                          },
                          child: const Tile(
                              name: "Bizning do'konlarimiz",
                              icon: Icons.shopping_bag_outlined),
                        ),
                        const Tile(
                            name: "Qo'llab-quvvatlash xizmati",
                            icon: Icons.chat_outlined),
                        const Tile(name: "Ma'lumot", icon: Icons.info_outline),
                        const Tile(
                          name: "Ilova haqida",
                          icon: Icons.phone_android,
                        ),
                        const Tile(
                          name: "Ko'rildi",
                          icon: Icons.remove_red_eye_outlined,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Versiya 3.4.3",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    )),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String name;
  final IconData icon;
  final String? indicator;

  const Tile(
      {super.key, required this.name, required this.icon, this.indicator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(
            width: 8,
          ),
          Text(name),
          const Spacer(),
          (indicator != null)
              ? Container(
            padding:
            const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Colors.yellow[100]),
            child: Text(indicator ?? ""),
          )
              : const SizedBox(),
          const SizedBox(
            width: 8,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey[300],
            size: 16,
          )
        ],
      ),
    );
  }
}
