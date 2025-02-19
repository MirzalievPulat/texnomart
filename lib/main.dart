// import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/di/di.dart';
import 'package:texnomart/presentation/AllFeatures/all_features_screen.dart';
import 'package:texnomart/presentation/container/container_bloc.dart';
import 'package:texnomart/presentation/container/container_screen.dart';


import 'data/source/local/repository/hive_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.yellow, // Status Bar rangini o'zgartirish
    statusBarIconBrightness: Brightness.dark, // Iconlar oq rangda
  ));
  await HiveHelper.init();
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // navigatorObservers: [ChuckerFlutter.navigatorObserver],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => getIt.get<ContainerBloc>()..add(CalculateCart()),
        child: ContainerScreen(),
      ),
    );
  }
}

