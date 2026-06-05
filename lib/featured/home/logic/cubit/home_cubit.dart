import 'package:bloc/bloc.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/error_handler.dart';
import 'package:doctor_app/featured/home/data/model/home_respone_model.dart';
import 'package:doctor_app/featured/home/data/repo/home_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepos homeRepos;
  HomeCubit(this.homeRepos) : super(HomeState.initial());

  Future<void> getSpecializations() async {
    emit(const HomeState.loading());
    final result = await homeRepos.getSpecializations();
    result.when(
      success: (ResponseModel data) {
        emit( HomeState.success(data));
      },
      failure: (ErrorHandler error) {
        emit( HomeState.failure(error.apiErrorModel.message ?? 'An error occurred'));
      },
    );
  }
}
