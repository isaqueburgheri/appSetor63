// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';

Future lockOrientation() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

/*
await SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
*/

/*
await SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
*/
}
