import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:catbreeds/src/models/cat/cat.dart';
import 'package:catbreeds/src/datasource/the_cat_data_source.dart';

part 'cat_list_event.dart';
part 'cat_list_state.dart';

class CatListBloc extends Bloc<CatListEvent, CatListState> {
  
  CatListBloc({ required CatDataSource catListRespository}) : super(CatListLoading()) {
    _repository = catListRespository ;
    _initList();  

    on<ResetBloc>((event, emit) => emit(CatListLoading()),);
    on<DataList>(_onDataList); 
  }

  late CatDataSource _repository;

  final int numberInitial = 7;

  final String keySearch = 'breed_ids';

  late bool isSearch;

  late bool isFirstRequest;

  late bool isFullList;

  late int currentPage;

  void _initList() {
    _stateRequest(isFirstRequest: true);
    _initVariables();
  }

  void _stateRequest({bool isSearch = false, bool isFirstRequest = false}) {
    this.isSearch = isSearch;
    this.isFirstRequest = isFirstRequest;
  }

  void _initVariables() {
    currentPage = 0;
    isFullList = false;    
  }
   
  void searchUser({required  Map<String, String> paramsSearch }) {
    _initVariables();
    _stateRequest(isSearch: true, isFirstRequest: true);      
    add(
      DataList(
        paramsSearch: paramsSearch
      )
    ); 
    isFirstRequest = false;  
  }

  void requestUser({required  Map<String, String> paramsSearch }) {       
    add(
      DataList(
        paramsSearch: paramsSearch
      )
    );    
  }

  bool isNewPage() {
    var validation = true;

    if (isFullList) {
      validation = false;
    } else {
      currentPage ++;
    }

    return validation;
  }

  void restartPage() {  
      _initVariables();
      _stateRequest( isFirstRequest: true);      
  }

  Future  _onDataList(
    DataList event,
    Emitter<CatListState> emit,
  ) async {
    try {    

      final paramsSearch = {
        'has_breeds': '1',
        'order': event.paramsSearch.isNotEmpty ? 'ASC' : 'RANDOM',
        'page': currentPage.toString(),
        'limit': numberInitial.toString(),
      };

      event.paramsSearch.forEach((key, value) {
        final valueEntry = <String, String>{key: value}; 
        paramsSearch.addEntries(valueEntry.entries);
      });
          

      final cats = await _repository.getCats(
        paramsSearch: paramsSearch,
      );           

      isFullList = cats.length < numberInitial;       
      
      emit( 
        cats.isEmpty
        ? CatListSuccessful(hasReachedMax: false,isFirstResponse: isFirstRequest )
        : CatListSuccessful(
          list: cats,
          isFirstResponse: isFirstRequest,
          hasReachedMax: cats.length < numberInitial           
          )
      ); 
                                                                              
    } catch (e){ 
      emit( CatListError(error: e.toString()));                  
    }                    
  }

}
