part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.success(ResponseModel data) = Success;
  const factory HomeState.failure(String? message) = Failure;

}
