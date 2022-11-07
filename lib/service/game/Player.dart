import 'package:flame/components.dart';
import 'package:flame/events.dart';

import 'game_screen.dart';

class Player extends SpriteComponent with Draggable, HasGameRef<MyGame> {
  Player({
    required Vector2 size,
    required Vector2 position,
  }) : super(size: size, position: position);

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load("sample.png");
  }

  @override
  bool onDragUpdate(DragUpdateInfo info) {
    position.x = info.eventPosition.game.x;
    position.y = info.eventPosition.game.y;
    return true;
  }

  @override
  void update(double dt) {
    position += gameRef.joystick.delta * 0.1;
  }
}
