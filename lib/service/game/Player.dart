import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/cupertino.dart';

import 'game_screen.dart';

class Player extends SpriteAnimationComponent with HasGameRef<MyGame> {
  Player({
    required Vector2 size,
    required Vector2 position,
  }) : super(size: size, position: position);

  final double _animationSpeed = 0.15;
  late final SpriteAnimation _runDownAnimation;
  late final SpriteAnimation _runLeftAnimation;
  late final SpriteAnimation _runUpAnimation;
  late final SpriteAnimation _runRightAnimation;
  late final SpriteAnimation _standingAnimation;

  @override
  Future<void> onLoad() async {
    final spriteSheet = SpriteSheet(
        image: await gameRef.images.load("example.png"),
        srcSize: Vector2(29.0, 32.0));

    _runDownAnimation = spriteSheet.createAnimation(
      row: 0,
      stepTime: _animationSpeed,
      to: 3,
    );

    _runLeftAnimation = spriteSheet.createAnimation(
      row: 1,
      stepTime: _animationSpeed,
      to: 3,
    );

    _runUpAnimation = spriteSheet.createAnimation(
      row: 2,
      stepTime: _animationSpeed,
      to: 3,
    );

    _runRightAnimation = spriteSheet.createAnimation(
      row: 3,
      stepTime: _animationSpeed,
      from: 0,
      to: 4,
    );

    _standingAnimation = spriteSheet.createAnimation(
      row: 0,
      stepTime: _animationSpeed,
      to: 1,
    );

    animation = _standingAnimation;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
  }

  @override
  void update(double dt) {
    super.update(dt);
    position += gameRef.joystick.delta * 0.05;

    switch (gameRef.joystick.direction) {
      case JoystickDirection.up:
        animation = _runUpAnimation;
        break;
      case JoystickDirection.down:
        animation = _runDownAnimation;
        break;
      case JoystickDirection.left:
        animation = _runLeftAnimation;
        break;
      case JoystickDirection.right:
        animation = _runRightAnimation;
        break;
      default:
        animation = _standingAnimation;
        break;
    }
  }
}
