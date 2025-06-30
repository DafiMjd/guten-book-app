import 'package:data/data.dart';
import 'package:flutter/material.dart';

import '../app.dart';

void main() {
  F.appFlavor = Flavor.prod;

  runApp(const App());
}
