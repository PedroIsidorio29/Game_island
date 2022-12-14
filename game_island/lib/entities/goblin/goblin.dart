import 'dart:ui';
import 'package:bonfire/bonfire.dart';
import 'package:game_island/controller/goblin_controller.dart';
import 'package:game_island/entities/goblin/sprite_goblin.dart';
import 'package:game_island/entities/sprite_atack.dart';

class Goblin extends SimpleEnemy
    with
        ObjectCollision,
        AutomaticRandomMovement,
        UseStateController<GoblinRespawController> {
  Goblin(Vector2 position)
      : super(
          life: 200,
          position: position,
          size: Vector2(14, 14),
          speed: 100,
          animation: SimpleDirectionAnimation(
            idleRight: SpriteGoblin.goblinStaticoRight,
            runRight: SpriteGoblin.goblinRunRight,
            idleLeft: SpriteGoblin.goblinStaticoLeft,
            runLeft: SpriteGoblin.goblinRunLeft,
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
    seeAndMoveToPlayer(
        closePlayer: (player) {
          // Atacar o player
          simpleAttackMelee(
            damage: 20,
            size: size,
            animationDown: SpriteAtack.bottom,
            animationLeft: SpriteAtack.left,
            animationRight: SpriteAtack.right,
            animationUp: SpriteAtack.top,
            direction: lastDirection,
            withPush: true,
          );
        },
        radiusVision: 100);

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
    controller.respawn();
    super.die();
  }
}
