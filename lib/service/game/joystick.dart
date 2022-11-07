import 'package:flame/components.dart';

class Joystick extends JoystickComponent {
  Joystick(
      {required PositionComponent knob,
      required PositionComponent background,
      required Vector2 position})
      : super(knob: knob, background: background, position: position);
}

class JoystickInside extends SpriteComponent {
  JoystickInside({required Vector2 size}) : super(size: size);

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load("joystick_in.png");
  }
}

class JoystickOutside extends SpriteComponent {
  JoystickOutside({required Vector2 size}) : super(size: size);

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load("joystick_out.png");
  }
}
