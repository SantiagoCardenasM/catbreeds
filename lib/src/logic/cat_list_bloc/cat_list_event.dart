part of 'cat_list_bloc.dart';

class CatListEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class DataList extends CatListEvent{
  
  DataList( { required this.paramsSearch, }) : super(); 

  final Map<String, String>paramsSearch;

    @override
    List<Object> get props => [];

  }

class ResetBloc extends CatListEvent{  
  @override
  List<Object> get props => [];
}
