part of 'cat_list_bloc.dart';

class CatListState extends Equatable {
  const CatListState();
  
  @override
  List<Object?> get props => [];
}

class CatListLoading extends CatListState {
  @override
  List<Object> get props => [];
}

class CatListError extends CatListState {
  
  final String error;

  const CatListError({
    required this.error,
  });
  
  @override
  List<Object> get props => [error];
}

class CatListSuccessful extends CatListState {

  final List<Cat>? list;  
  final bool? hasReachedMax;
  final bool? isFirstResponse;

  const CatListSuccessful( {
    this.list,  
    required this.hasReachedMax,
    required this.isFirstResponse,
  });

  CatListSuccessful copyWith({
      List<Cat>? response,
      bool? hasReachedMax,
    }) {
    return CatListSuccessful(
      list: list ?? list, 
      hasReachedMax: hasReachedMax ?? hasReachedMax, 
      isFirstResponse: isFirstResponse ?? isFirstResponse
    );
  }

  @override
  List<Object?> get props => [ list,  ];

  @override
  String toString() => 'ListSuccess hasReachedMax: $hasReachedMax }';

}
