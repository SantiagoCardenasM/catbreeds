

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:catbreeds/src/config_dart_define.dart';


Map<String, String> getHeaderQuery(){
   return {
      'Content-Type': 'application/json',
      'x-api-key': dotenv.env['APIKEY']!,
    };
}

Uri getUrlhttps(String path, {Map<String, String>? queryParameters,}){
  return Uri.https( ConfigDartDefine.url(), path, queryParameters );
}
