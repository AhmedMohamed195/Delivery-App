part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchResults extends SearchState {
  final List<CategoryTwoModel> results; 

  const SearchResults(this.results);

  @override
  List<Object> get props => [results];
}

class SearchNoResults extends SearchState {}
