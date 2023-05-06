import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/remote/api.dart';
import '../../models/consulta.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState.initial()) {
    on<_Search>((event, emit)  async {
      emit(const SearchState.loading());

      var data = await Api().buscarCnpj(event.s);

      print(data);

      emit(SearchState.loaded(data));
    });
  }
}
