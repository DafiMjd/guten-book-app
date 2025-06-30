import 'package:data/data.dart';
import 'package:flutter/material.dart';

import '../app.dart';

void main() {
  F.appFlavor = Flavor.staging;

  runApp(const App());
}
