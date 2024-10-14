import 'package:flutter/material.dart';
import 'package:flutter_advanced_reference/doc_app.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
