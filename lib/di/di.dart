import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:texnomart/data/repository/repository.dart';
import 'package:texnomart/data/repository/repository_impl.dart';
import 'package:texnomart/data/source/local/repository/hive_repository.dart';
import 'package:texnomart/data/source/remote/api/api_service.dart';
import 'package:texnomart/data/source/remote/api/api_service_dio.dart';
import 'package:texnomart/presentation/container/container_bloc.dart';

final getIt = GetIt.instance;

void setUp(){
  getIt.registerSingleton<Dio>(Dio(
    BaseOptions(contentType: "application/json",
        baseUrl: "https://gw.texnomart.uz/api/web/",
        connectTimeout: const Duration(seconds: 60),
        receiveDataWhenStatusError: true),
  )
    // ..interceptors.add(
    //   TalkerDioLogger(
    //     talker: Talker(),
    //     settings:  const TalkerDioLoggerSettings(
    //       printRequestHeaders: true,
    //       printResponseHeaders: false,
    //       printResponseMessage: false,
    //       printResponseData: true,
    //       printRequestData: true,
    //     ),
    //   ),
    // )
  );
  
  getIt.registerSingleton<ProductsApi>(ProductsApi(getIt<Dio>()));
  getIt.registerSingleton<ApiServiceDio>(ApiServiceDio());
  getIt.registerSingleton<Repository>(RepositoryImpl());
  getIt.registerSingleton<HiveHelper>(HiveHelper());
  getIt.registerSingleton<ContainerBloc>(ContainerBloc());
}