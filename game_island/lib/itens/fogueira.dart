import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';

class Fogueira extends GameDecoration with Lighting {
  Fogueira(Vector2 position)
      : super(position: position, size: Vector2(14, 14)) {
    setupLighting(
      LightingConfig(
          radius: width * 1.5,
          color: const Color.fromARGB(132, 255, 230, 0),
          blurBorder: 20,
          withPulse: true,pulseVariation: 0.2),
    );
  }
}
