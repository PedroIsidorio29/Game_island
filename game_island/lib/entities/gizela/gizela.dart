import 'package:bonfire/bonfire.dart';

import 'sprite_gizela.dart';

class Gizela extends SimpleNpc with ObjectCollision {
  Gizela(Vector2 position)
      : super(
            position: position,
            size: Vector2(14, 14),
            animation: SimpleDirectionAnimation(
              idleLeft: SpriteGizela.gizelaStaticLeft,
              idleRight: SpriteGizela.gizelaStaticRight,
              runRight: SpriteGizela.gizelaRunRight,
            )) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(size: Vector2(14, 14)),
        ],
      ),
    );
  }
}
