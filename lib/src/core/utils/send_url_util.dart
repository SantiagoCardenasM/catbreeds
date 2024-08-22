// ignore_for_file: deprecated_member_use

import 'package:url_launcher/url_launcher.dart';

Future<void> navigateUrl(String? url) async {
  try {    
    if (url != null) await launch(url);
  } catch (_) {
  }  
}