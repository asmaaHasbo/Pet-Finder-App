part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

//===================== Home breed ==================
final class HomeBreedLoading extends HomeState {}

final class HomeBreedSuccess extends HomeState {
  final List<BreedModel> breedList;
  HomeBreedSuccess({required this.breedList});
}

final class HomeBreedFailure extends HomeState {
  final String errMsg;
  HomeBreedFailure({required this.errMsg});
}
