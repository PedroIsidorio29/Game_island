// ignore_for_file: unnecessary_this

import 'dart:ui';

import 'package:bonfire/bonfire.dart';
import 'package:game_island/entities/sprite_atack.dart';
import 'sprite_slime.dart';

class Slime extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement {
  Slime(Vector2 position)
      : super(
          life: 100,
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
    // Seguir o player
    seeAndMoveToPlayer(closePlayer: (player) {}, radiusVision: 100);

    // Atacar o player
    simpleAttackMelee(
      damage: 10,
      size: size,
      animationDown: SpriteAtack.bottom,
      animationLeft: SpriteAtack.left,
      animationRight: SpriteAtack.right,
      animationUp: SpriteAtack.top,
    );

    runRandomMovement(dt, speed: 50, maxDistance: 200);
    super.update(dt);
  }

  // renderização da barra de vida
  @override
  void render(Canvas canvas) {
    drawDefaultLifeBar(
      canvas,
      height: 2,
      borderWidth: 2,
      align: const Offset(0, 0),
      borderColor: const Color.fromARGB(170, 0, 0, 0),
    );
    super.render(canvas);
  }

  // desaparecimento apos a morte
  @override
  void die() {
    removeFromParent();
    super.die();
  }
}
