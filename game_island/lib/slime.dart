import 'package:bonfire/bonfire.dart';
import 'package:game_island/sprite_slime.dart';

class Slime extends SimpleEnemy {
  Slime(Vector2 position)
      : super(
          position: position,
          size: Vector2(14, 14),
          speed: 130,
          animation: SimpleDirectionAnimation(
            idleRight: SpriteSlime.slimeStaticoRight,
            runRight: SpriteSlime.slimeRunRight,
            idleLeft: SpriteSlime.slimeStaticoLeft,
            runLeft: SpriteSlime.slimeRunLeft,
          ),
        );
}
