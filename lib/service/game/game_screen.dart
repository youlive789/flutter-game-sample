import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:game/service/game/Player.dart';
import 'package:game/service/game/joystick.dart';

class MyGame extends FlameGame with HasDraggables {
  late Joystick joystick;
  late Player player;

  @override
  Future<void> onLoad() async {
    var background = RectangleComponent.square(
        size: 999999,
        position: Vector2(0, 0),
        paint: BasicPalette.white.paint());
    add(background);

    var joystickOutside = JoystickOutside(size: Vector2(100, 100));
    var joystickInside = JoystickInside(size: Vector2(50, 50));
    joystick = Joystick(
        knob: joystickInside,
        background: joystickOutside,
        position: Vector2(size.x * 0.5, size.y * 0.75));
    add(joystick);

    player = Player(
        size: Vector2(30, 40), position: Vector2(size.x * 0.5, size.y * 0.5));
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
