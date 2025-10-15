import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_finder_app/core/networking/api_result.dart';
import 'package:pet_finder_app/features/home/data/model/breed_model/breed_model.dart';
import 'package:pet_finder_app/features/home/data/repos/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(HomeInitial());

  emitHomeBreedStates() async {
    emit(HomeBreedLoading());
    log('HomeBreedLoading');
    final result = await homeRepo.getBreeds();
    result.when(
      success: (breedList) {
        log('HomeBreedSuccess');
        log('HomeBreedSuccess with ${breedList.length} breeds');
        emit(HomeBreedSuccess(breedList: breedList));
      },
      failure: (errorModel) {
        log('HomeBreedSuccess');
        emit(HomeBreedFailure(errMsg: errorModel.message));
      },
    );
  }
}
