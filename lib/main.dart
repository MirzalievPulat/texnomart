import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/di/di.dart';
import 'package:texnomart/presentation/detail/detail_screen.dart';
import 'package:texnomart/presentation/home/home_bloc.dart';
import 'package:texnomart/presentation/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.yellow, // Status Bar rangini o'zgartirish
    statusBarIconBrightness: Brightness.dark, // Iconlar oq rangda
  ));

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
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => HomeBloc()..add(RefreshHome()),
        child: const HomeScreen(),
      ),
    );
  }
}

