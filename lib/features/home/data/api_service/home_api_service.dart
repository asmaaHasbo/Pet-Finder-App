import 'package:dio/dio.dart';
import 'package:pet_finder_app/core/networking/api_end_points.dart';
import 'package:pet_finder_app/features/home/data/model/breed_model/breed_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiEndPoints.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(ApiEndPoints.breeds)
  Future<BreedModel> getBreeds();
}
