import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../app.dart';

void main() {
  F.appFlavor = Flavor.staging;

  runApp(const App());
}
