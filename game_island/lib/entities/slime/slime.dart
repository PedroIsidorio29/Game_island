import 'dart:ui';

import 'package:bonfire/bonfire.dart';

import 'sprite_slime.dart';

class Slime extends SimpleEnemy with ObjectCollision {
  Slime(Vector2 position)
      : super(
          position: position,
          size: Vector2(14, 14),
          speed: 100,
          animation: SimpleDirectionAnimation(
            idleRight: SpriteSlime.slimeStaticoRight,
            runRight: SpriteSlime.slimeRunRight,
            idleLeft: SpriteSlime.slimeStaticoLeft,
            runLeft: SpriteSlime.slimeRunLeft,
          ),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(size: Vector2(14, 14)),
        ],
      ),
    );
  }
  @override
  void update(double dt) {
    seeAndMoveToPlayer(closePlayer: (player) {}, radiusVision: 40);
simpleAttackMelee(damage: 3, size: size);
    super.update(dt);
  }

  @override
  void render(Canvas canvas) {
    drawDefaultLifeBar(
      canvas,
      height: 2,
      borderWidth: 2,
      align: Offset(0, 0),
      borderColor: Color.fromARGB(170, 0, 0, 0),
    );
    super.render(canvas);
  }

  @override
  void die() {
    removeFromParent();
    super.die();
  }
}
