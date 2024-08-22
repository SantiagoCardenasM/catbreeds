import 'package:flutter/material.dart';
import 'package:catbreeds/src/page/home/home_page.dart';
import 'package:catbreeds/src/datasource/the_cat_data_source.dart';
import 'package:catbreeds/src/logic/cat_list_bloc/cat_list_bloc.dart';

class AppRoutes{
  
  AppRoutes._();

  static const String home  = '/home';

  static Map<String, WidgetBuilder> routes() =>
  { 
    home: (context) {
      return HomePage(
        catListBloc: CatListBloc(catListRespository: CatDataSource()),
      ); 
    },
  };
}

