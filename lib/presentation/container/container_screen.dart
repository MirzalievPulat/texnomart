import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/di/di.dart';

import '../cart/cart_bloc.dart';
import '../cart/cart_screen.dart';
import '../home/home_bloc.dart';
import '../home/home_screen.dart';
import '../katalog/katalog_bloc.dart';
import '../katalog/katalog_screen.dart';
import '../orders/orders_screen.dart';
import '../profile/profile_screen.dart';
import 'container_bloc.dart';

class ContainerScreen extends StatelessWidget {
  ContainerScreen({super.key});

  final List<StatelessWidget> pages = [
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.get<ContainerBloc>(),
        ),
        BlocProvider(
          create: (context) => HomeBloc()..add(RefreshHome()),
        ),
      ],
      child: const HomeScreen(),
    ),
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.get<ContainerBloc>(),
        ),
        BlocProvider(
          create: (context) => KatalogBloc()..add(RefreshKatalog()),
        )
      ],
      child: const KatalogScreen(),
    ),
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.get<ContainerBloc>(),
        ),
        BlocProvider(
          create: (context) => CartBloc()..add(RefreshCart()),
        )
      ],
      child: const CartScreen(),
    ),
    const OrdersScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContainerBloc, ContainerState>(

      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              backgroundColor: Colors.white,
              showUnselectedLabels: true,
              currentIndex: state.selectedIndex ?? 0,
              onTap: (value) {
                context.read<ContainerBloc>().add(ChangePage(value));
              },
              items: [
                const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_outlined,
                      size: 24,
                    ),
                    label: "Bosh sahifa"),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.manage_search), label: "Katalog"),
                BottomNavigationBarItem(
                    icon: Badge(
                        label: Text(
                          state.productInCard?.toString() ?? "0",
                          style: const TextStyle(color: Colors.black),
                        ),
                        isLabelVisible: state.productInCard != 0,
                        backgroundColor: Colors.yellow,
                        child: Icon(Icons.shopping_cart_outlined)),
                    label: "Savatcha"),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.check_box_outlined), label: "Buyurtmalar"),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profil"),
              ]),
          body: IndexedStack(
            index: state.selectedIndex ?? 0,
            children: pages,
          ),
        );
      },
    );
  }
}
