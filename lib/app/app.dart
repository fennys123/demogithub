import 'package:flutter/material.dart';
import 'config/theme/app_theme.dart';
import 'config/router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedThemeColor: 1).theme(),
      routerConfig: appRouter,
    );
  }
}
