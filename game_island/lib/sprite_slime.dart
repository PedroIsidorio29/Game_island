import 'package:bonfire/bonfire.dart';

class SpriteSlime {
  static Future<SpriteAnimation> get slimeStaticoLeft => SpriteAnimation.load(
        'enemy/slime/slime_idle_left.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get slimeStaticoRight => SpriteAnimation.load(
        'enemy/slime/slime_idle_right.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get slimeRunLeft => SpriteAnimation.load(
        'enemy/slime/slime_run_left.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
 static Future<SpriteAnimation> get slimeRunRight => SpriteAnimation.load(
        'enemy/slime/slime_run_right.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
}
