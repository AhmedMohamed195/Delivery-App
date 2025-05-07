import 'package:bloc/bloc.dart';
import 'package:deliveryapp/data/dummy_data.dart';
import 'package:deliveryapp/models/category_two_model.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  void search(String query) {
    if (query.isEmpty) {
      emit(SearchInitial());
      return;
    }

    final results =
        categoriesDataTwo.where((item) {
          return item.textone.toLowerCase().contains(query.toLowerCase());
        }).toList();

    if (results.isEmpty) {
      emit(SearchNoResults());
    } else {
      emit(SearchResults(results));
    }
  }
}
