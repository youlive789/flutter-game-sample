import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:game/service/game/background.dart';
import 'package:game/service/game/player.dart';
import 'package:game/service/game/joystick.dart';

class MyGame extends FlameGame with HasDraggables {
  late ParallaxComponent background;
  late Joystick joystick;
  late Player player;

  @override
  Future<void> onLoad() async {
    background = Background();
    add(background);

    joystick = Joystick(
        knob: JoystickInside(size: Vector2(50, 50)),
        background: JoystickOutside(size: Vector2(100, 100)),
        position: Vector2(size.x * 0.5, size.y * 0.75));
    add(joystick);

    player = Player(
        size: Vector2(30, 40), position: Vector2(size.x * 0.5, size.y * 0.5));
    add(player);

    camera.followComponent(player, relativeOffset: Anchor.center);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    camera.apply(canvas);
  }

  @override
  void update(double dt) {
    super.update(dt);
    camera.update(dt);
  }
}
