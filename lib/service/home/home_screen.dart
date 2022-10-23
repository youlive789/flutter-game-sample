import 'package:flutter/material.dart';
import 'package:game/app_routes.dart';
import 'package:game/service/home/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("test"),
      ),
      body: Column(children: [
        ElevatedButton(
          onPressed: () => Get.toNamed(AppRoutes.game),
          child: const Text("start game"),
        )
      ]),
    );
  }
}
