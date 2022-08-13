import 'package:bonfire/bonfire.dart';

class SpriteJogador {
  static Future<SpriteAnimation> get playerStaticoLeft => SpriteAnimation.load(
        'player/knight/knight_idle_left.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get playerStaticoRight => SpriteAnimation.load(
        'player/knight/knight_idle_right.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get playerRunLeft => SpriteAnimation.load(
        'player/knight/knight_run_left.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
 static Future<SpriteAnimation> get playerRunRight => SpriteAnimation.load(
        'player/knight/knight_run_right.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
}
