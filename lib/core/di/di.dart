import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pet_finder_app/core/networking/dio_factory.dart';
import 'package:pet_finder_app/features/home/data/api_service/home_api_service.dart';
import 'package:pet_finder_app/features/home/data/repos/home_repo.dart';
import 'package:pet_finder_app/features/home/logic/cubit/home_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
 
  //=============== home ==================
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
