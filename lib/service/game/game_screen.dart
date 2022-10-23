import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:game/service/game/Player.dart';

class MyGame extends FlameGame with HasDraggables {
  @override
  Future<void> onLoad() async {
    var player = Player(size: Vector2(30, 40), position: Vector2(100, 100));
    add(player);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
  }

  @override
  void update(double dt) {
    super.update(dt);
  }
}
