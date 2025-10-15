import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pet_finder_app/core/error/api_error_handler.dart';
import 'package:pet_finder_app/core/error/error_model.dart';
import 'package:pet_finder_app/core/networking/api_result.dart';
import 'package:pet_finder_app/features/home/data/api_service/home_api_service.dart';
import 'package:pet_finder_app/features/home/data/model/breed_model/breed_model.dart';

class HomeRepo {
  HomeApiService homeApiService;
  HomeRepo(this.homeApiService);

  Future<ApiResult<BreedModel>> getBreeds() async {
    try {
      final response = await homeApiService.getBreeds();
      return ApiResult.success(response);
    } on DioException catch (e) {
      log('Dio error ${e.toString()}');

      return ApiResult.failure(handleDioException(e));
    } catch (e) {
      log('catch error ${e.toString()}');
      return ApiResult.failure(ErrorModel(message: e.toString()));
    }
  }
}
