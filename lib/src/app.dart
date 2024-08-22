import 'package:flutter/material.dart';
import 'package:catbreeds/src/core/styles/app_theme.dart';
import 'package:catbreeds/src/core/routes/app_routes.dart';

class App extends StatelessWidget {
  
  const App({super.key, });
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.defaultTheme(),     
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes(),
    );
  }
}