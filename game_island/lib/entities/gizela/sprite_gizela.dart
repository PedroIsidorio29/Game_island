import 'package:bonfire/bonfire.dart';

class SpriteGizela {
  static Future<SpriteAnimation> get gizelaStaticLeft => SpriteAnimation.load(
        "npc/gizela_idle_left.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get gizelaStaticRight => SpriteAnimation.load(
        "npc/gizela_idle_right.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get gizelaRunRight => SpriteAnimation.load(
        "npc/gizela_idle_right.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
}
