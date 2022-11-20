import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/cupertino.dart';

import 'game_screen.dart';

class Background extends ParallaxComponent<MyGame> {
  static final backgroundVelocity = Vector2(3.0, 3.0);
  static const framesPerSec = 60.0;
  static const threshold = 0.5;

  Vector2 lastCameraPosition = Vector2.zero();

  @override
  Future<void> onLoad() async {
    parallax = await gameRef.loadParallax([ParallaxImageData('dirt.png')],
        repeat: ImageRepeat.repeat);
  }

  @override
  Future<void> update(double dt) async {
    super.update(dt);
    final cameraPosition = gameRef.camera.position;
    final delta = 10.0;
    final baseVelocity = cameraPosition
      ..sub(lastCameraPosition)
      ..multiply(backgroundVelocity)
      ..multiply(Vector2(delta, delta));

    parallax!.baseVelocity.setFrom(baseVelocity);
    lastCameraPosition.setFrom(gameRef.camera.position);
  }

  @override
  void render(Canvas canvas) async {
    super.render(canvas);
  }
}
