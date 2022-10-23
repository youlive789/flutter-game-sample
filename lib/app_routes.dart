import 'package:flame/game.dart';
import 'package:game/common/dependancy_bindings.dart';
import 'package:game/service/game/game_screen.dart';
import 'package:game/service/home/home_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static const home = "/home";
  static const game = "/game";

  static final getPages = [
    GetPage(
        name: home,
        page: () => const HomeScreen(),
        binding: DependancyBindings()),
    GetPage(
        name: game,
        page: () => GameWidget(
              game: MyGame(),
            ),
        binding: DependancyBindings()),
  ];
}
