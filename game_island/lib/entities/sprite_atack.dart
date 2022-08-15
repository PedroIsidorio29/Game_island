import 'package:bonfire/bonfire.dart';

class SpriteAtack {
  static Future<SpriteAnimation> get left => SpriteAnimation.load(
        'efects/atack_effect_left.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get right => SpriteAnimation.load(
        'efects/atack_effect_right.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get bottom => SpriteAnimation.load(
        'efects/atack_effect_bottom.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
 static Future<SpriteAnimation> get top => SpriteAnimation.load(
        'efects/atack_effect_top.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
}
