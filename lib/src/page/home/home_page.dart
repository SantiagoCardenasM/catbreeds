import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:catbreeds/src/models/cat/cat.dart';
import 'package:catbreeds/src/page/cat/cat_page.dart';
import 'package:catbreeds/src/core/styles/app_colors.dart';
import 'package:catbreeds/src/core/styles/app_spaces.dart';
import 'package:catbreeds/src/ui/widgets/text_widgets.dart';
import 'package:catbreeds/src/ui/widgets/fields_widgets.dart';
import 'package:catbreeds/src/core/utils/list_conts_util.dart';
import 'package:catbreeds/src/ui/widgets/container_widgets.dart';
import 'package:catbreeds/src/ui/widgets/widgets_wrap_widget.dart';
import 'package:catbreeds/src/logic/cat_list_bloc/cat_list_bloc.dart';
import 'package:catbreeds/src/ui/widgets/buttom_containers_widget.dart';
import 'package:catbreeds/src/ui/widgets/loading_indicator_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key, 
    required this.catListBloc
  });

  final CatListBloc catListBloc;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _scrollController = ScrollController();
  final _searchTextController = TextEditingController();
  
  Timer? _debounce;
  String _tempWordSearch = '';
  List<Cat> _listCats = <Cat>[];

  late CatListBloc _catListBloc;

  @override
  void initState() {
    _initBloc();
    super.initState();
  }

  void _initBloc() {
    _searchTextController.text = '';
    _scrollController.addListener((_onScroll)); 
    _catListBloc = widget.catListBloc;
    _catListBloc.add(
      DataList(
        paramsSearch: const <String, String>{},
      ),
    );
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll == currentScroll && _catListBloc.isNewPage()) {      
      _catListBloc.requestUser(
        paramsSearch: _catListBloc.isSearch && _searchTextController.text.isNotEmpty          
        ? <String, String>{
            _catListBloc.keySearch:  _searchTextController.text.toLowerCase().trim(),
          }
        : <String, String>{},
      );
    }
  }

  void _restartPage(){
    setState(() {
      _listCats = <Cat>[];
      _catListBloc.restartPage();
      _initBloc();
      _searchTextController.text = '';      
    });
  }

  void _onChangedTextSearch(String text) {
   
    if (_debounce?.isActive ?? false) _debounce?.cancel();
      _debounce = Timer(const Duration(milliseconds: 500), () {
      if(text.isNotEmpty){
        _catListBloc.add(ResetBloc());
        _tempWordSearch = _searchTextController.text;
        _listCats = <Cat>[];
        _catListBloc.searchUser(
          paramsSearch: <String, String>{
            _catListBloc.keySearch :  text.toLowerCase().trim(),
          },
        );
      }else{
        FocusScope.of(context).unfocus();
        _searchTextController.clear();
        _restartPage();
      }
    });


  }

  void _catBlocListener( BuildContext context, CatListState state ){ 
    if ( state is CatListError ){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: TextBasic(
            text: state.error,
            color: AppColors.brownPrimary,
          ),
          backgroundColor: AppColors.orangeBackground,
        ),
      );
    }
  }

  void _addListCats(List<Cat>? list){
    if (list != null) {
      _listCats.addAll(list);
    }
  }

  Widget _validateList({required bool hasReachedMax}) {
    if ( _listCats.isNotEmpty) {
      return _viewList(hasReachedMax: hasReachedMax );
    } else{
      if (_searchTextController.text.isNotEmpty) { 
        return _HistoryNotFound(
          message: 'No results found with the search "$_tempWordSearch", \n please enter the full breed name \n\n example: "sava"',
          onTap: _restartPage,
        );
      } else {
        return const LoadingIndicator();
      }
    }
  }

  Expanded _viewList({ required bool hasReachedMax}) {
    return Expanded(      
      child: RefreshIndicator(
        onRefresh: () async { _restartPage();},
        child: ListView.builder(
        padding: const EdgeInsets.only(bottom: AppSpaces.h5),
        itemBuilder: (BuildContext context, int index) {
          return index >= _listCats.length
            ? const LoadingIndicator()
            :  _listCats[index].breeds.isNotEmpty 
              ? _CatCard(cat: _listCats[index])
              : const SizedBox();
          },
          itemCount: hasReachedMax || _catListBloc.isFullList
          ? _listCats.length
          : _listCats.length + 1,
          controller: _scrollController,
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return WrapCloseKeyboard(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            const SizedBox(height: AppSpaces.h5,),
            SafeArea(
              child: SearchTextField(
                hintText: 'Search by breed',
                padding: EdgeInsets.zero,
                textController: _searchTextController,
                onChange: _onChangedTextSearch,
              ),
            ),
            BlocConsumer <CatListBloc, CatListState>(
            listener: _catBlocListener,
            bloc: _catListBloc,
            builder: (context, state) {
              if (state is CatListLoading) {
                return SizedBox(
                  height: MediaQuery.of(context).size.width, 
                  child: const LoadingIndicator(),
                );
              } 
              else if (state is CatListSuccessful) {    
                _addListCats(state.list);                                                              
                return _validateList(hasReachedMax: state.hasReachedMax!);                 
              }     
              return _HistoryNotFound(
                onTap: _restartPage,
                message: 'Ups!!\n Something went wrong',
              );
            },              
            )
          ],
        ),
      ),
    );
  }
}

class _CatCard extends StatelessWidget {
  const _CatCard({
    required Cat cat,
  }) : _cat = cat;

  final Cat _cat;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const transitionDuration = Duration(milliseconds: 700);
        Navigator.of(context).push(
          PageRouteBuilder(
            transitionDuration: transitionDuration,
            reverseTransitionDuration: transitionDuration,
            pageBuilder: (_, animation, __){
              return FadeTransition( 
                opacity: animation,
                child: CatInformationPage(cat: _cat,)
              );                
            }
          ),
        );
      },
      child: ContainerBorderCircular(
          radioCircular: 10,
          colorBackground: Colors.white,
          interiorPadding: EdgeInsets.zero,
          margin: const EdgeInsets.symmetric( horizontal: AppSpaces.h15 , vertical: AppSpaces.h12),
          child: Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  children: [
                    Expanded(
                      flex: 9,
                      child: Hero(
                        tag: _cat.url,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(_cat.url),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  padding: const EdgeInsets.all(AppSpaces.h5),
                  decoration: BoxDecoration(
                    color: AppColors.orangeBackground,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppColors.blueDarkTitles,
                    size: 19,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.7,
                padding: const EdgeInsets.only(bottom: AppSpaces.h5),
                child: Column(
                  children: [
                    const Expanded(flex: 7,child: SizedBox(),),
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,                        
                          borderRadius: BorderRadius.only( topLeft: Radius.circular(40)),                      
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: AppSpaces.h25, top: AppSpaces.h15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextBasic( 
                                text: '${getFlagByCode(_cat.breeds.first.countryCode)}  ${_cat.breeds.first.name} (${_cat.breeds.first.id})',
                                isBold: true,
                              ),                              
                              const SizedBox( height: AppSpaces.h5),
                              TextBasic(
                                text: _cat.breeds.first.temperament.toString(),
                                maxLines: 2,
                                textAlign: TextAlign.start,

                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                   
                  ],
                ),
              ), 
            ],
          ),
        ),
    );
  }
}

class _HistoryNotFound extends StatelessWidget {
  const _HistoryNotFound({
    required this.message, 
    required this.onTap,
  });
  final String message;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox( height: AppSpaces.h25),
          const Icon(
            Icons.pets_outlined,
            size: 100,
            color: AppColors.orangeBackground,
          ),
          const SizedBox( height: AppSpaces.h25),
          Center(
            child: TextBasic(
              text: message,                
              textAlign: TextAlign.center,
              maxLines: 4,
            ),
          ),
          const SizedBox( height: AppSpaces.h25),
          ButtomContainer(
            onClick: onTap,
            widthbuttom: MediaQuery.of(context).size.width * 0.7,
            colorButtom: AppColors.orangeBackground,
            child: const TextButtom(text: 'Clear search', color: AppColors.brownPrimary),
          )
        ],
      ),
    );
  }
}