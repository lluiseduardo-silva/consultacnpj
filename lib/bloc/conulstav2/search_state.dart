part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  factory SearchState.loaded(Map<String, dynamic> s) = _Loaded;
}
