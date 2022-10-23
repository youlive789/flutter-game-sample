import 'package:flutter/material.dart';
import 'package:game/app_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Game Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.getPages,
      defaultTransition: Transition.fade,
      debugShowCheckedModeBanner: false,
    );
  }
}
