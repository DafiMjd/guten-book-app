import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../app.dart';

void main() {
  F.appFlavor = Flavor.prod;

  runApp(const App());
}
