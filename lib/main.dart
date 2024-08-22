import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:catbreeds/src/app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
    runApp( const App());
  });
}
