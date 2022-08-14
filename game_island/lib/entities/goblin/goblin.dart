import 'dart:ui';
import 'package:bonfire/bonfire.dart';
import 'package:game_island/entities/goblin/sprite_goblin.dart';

class Goblin extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement {
  Goblin(Vector2 position)
      : super(
          life: 200,
          position: position,
          size: Vector2(14, 14),
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
    seeAndMoveToPlayer(closePlayer: (player) {}, radiusVision: 100);

    // Atacar o player
    simpleAttackMelee(damage: 20, size: size);

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
