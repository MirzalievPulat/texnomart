import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/presentation/category/category_screen.dart';

import '../../di/di.dart';
import '../category/category_bloc.dart';
import '../container/container_bloc.dart';
import '../home/home_bloc.dart';
import 'katalog_bloc.dart';

class KatalogScreen extends StatelessWidget {
  const KatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<KatalogBloc, KatalogState>(
      listener: (context, state) {},
      builder: (context, state) {
        return AnnotatedRegion(
          value: const SystemUiOverlayStyle(
            statusBarColor: Colors.yellow,
            statusBarIconBrightness: Brightness.dark
          ),
          child: SafeArea(
            child: Scaffold(
                backgroundColor: Colors.white,
                appBar: PreferredSize(
                    preferredSize: const Size.fromHeight(70),
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.only(top: 16,right: 16,left: 16,bottom: 16),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[100]),
                        child: const Row(children: [
                          Icon(
                            Icons.search,
                            size: 24,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Qidirish",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          )
                        ]),
                      ),
                    )),
                body: switch (state.status) {
                  null => const SizedBox(),
                  Status.loading => const Center(
                      child: CircularProgressIndicator(
                        color: Colors.yellow,
                      ),
                    ),
                  Status.error => Center(
                      child: Text(state.errorMessage ?? ""),
                    ),
                  Status.success => ListView.separated(
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MultiBlocProvider(providers: [
                                        BlocProvider(create: (context) =>
                                        CategoryBloc()..add(InitCategory(
                                            state.katalogs?[index].slug??"smartfony")),
                                        ),
                                        BlocProvider(create: (context) =>
                                            getIt.get<ContainerBloc>())],
                                        child: const CategoryScreen(),
                                      ),)
                            );
                          },
                          child: ListTile(
                            title:  Text(
                              state.katalogs?[index].name??"--",
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            leading: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey[100]),
                              child: Center(
                                // Ensures the child is centered within the Container
                                child: SvgPicture.network(
                                  state.katalogs?[index].icon??"",
                                  height: 24, // Explicitly set height
                                  width: 24, // Explicitly set width
                                  placeholderBuilder: (BuildContext context) =>
                                      Image.asset(
                                    "assets/images/placeholder.png",
                                    height: 24,
                                    // Ensure placeholder matches desired size
                                    width: 24,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.grey,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 2,
                        );
                      },
                      itemCount: state.katalogs?.length??0),
                }),
          ),
        );
      },
    );
  }
}
