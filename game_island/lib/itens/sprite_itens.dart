import 'package:bonfire/bonfire.dart';

class SpriteItens {
  static Future<Sprite> get lifePotion => Sprite.load(
        "itens/life_potion.png",
        srcPosition: Vector2(0, 0),
      );
  static Future<Sprite> get maxPotion => Sprite.load(
        "itens/max_potion.png",
        srcPosition: Vector2(0, 0),
      );
  static Future<Sprite> get poisonPotion => Sprite.load(
        "itens/poison_potion.png",
        srcPosition: Vector2(0, 0),
      );
  static Future<Sprite> get strengthPotion => Sprite.load(
        "itens/strength_potion.png",
        srcPosition: Vector2(0, 0),
      );
  static Future<SpriteAnimation> get coin => SpriteAnimation.load(
        "itens/coin.png",
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
}
