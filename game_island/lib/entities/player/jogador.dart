import 'dart:ui';
import 'sprite_jogador.dart';
import 'package:bonfire/bonfire.dart';

class Jogador extends SimplePlayer with ObjectCollision {
  Jogador(Vector2 position)
      : super(
            life: 150,
            position: position,
            size: Vector2(16, 16),
            speed: 150,
            animation: SimpleDirectionAnimation(
              idleRight: SpriteJogador.playerStaticoRight,
              runRight: SpriteJogador.playerRunRight,
              idleLeft: SpriteJogador.playerStaticoLeft,
              runLeft: SpriteJogador.playerRunLeft,
            )) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(size: Vector2(14, 14)),
        ],
      ),
    );
  }

  // Ação ao bater no inimigo
  @override
  void joystickAction(JoystickActionEvent event) {
    if (event.event == ActionEvent.DOWN && event.id == 1) {
      simpleAttackMelee(damage: 20, size: size, sizePush: 14);
    }
    super.joystickAction(event);
  }

  // renderização da barra de vida
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

  // desaparecimento apos a morte
  @override
  void die() {
    removeFromParent();
    super.die();
  }
}
