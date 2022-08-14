import 'package:bonfire/bonfire.dart';

class SpriteGoblin {
  static Future<SpriteAnimation> get goblinStaticoLeft => SpriteAnimation.load(
        'enemy/goblin/goblin_idle_left.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get goblinStaticoRight => SpriteAnimation.load(
        'enemy/goblin/goblin_idle_right.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get goblinRunLeft => SpriteAnimation.load(
        'enemy/goblin/goblin_run_left.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
 static Future<SpriteAnimation> get goblinRunRight => SpriteAnimation.load(
        'enemy/goblin/goblin_run_right.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
}
