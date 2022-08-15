import 'dart:ui';
import 'package:game_island/entities/sprite_atack.dart';

import 'sprite_jogador.dart';
import 'package:bonfire/bonfire.dart';

class Jogador extends SimplePlayer with ObjectCollision, Lighting {
  double forca = 10;
  int pontuacao = 0;
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

    setupLighting(
      LightingConfig(
        radius: width * 1.5,
        color: const Color.fromARGB(59, 255, 255, 255),
        blurBorder: 30,
      ),
    );
  }

  addForca(val) {
    forca = forca + val;
  }

  // Ação ao bater no inimigo
  @override
  void joystickAction(JoystickActionEvent event) {
    if (event.event == ActionEvent.DOWN && event.id == 1) {
      simpleAttackMelee(
        damage: forca,
        size: size,
        sizePush: 14,
        animationDown: SpriteAtack.bottom,
        animationLeft: SpriteAtack.left,
        animationRight: SpriteAtack.right,
        animationUp: SpriteAtack.top,
      );
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
      align:const Offset(0, 0),
      borderColor:const Color.fromARGB(170, 0, 0, 0),
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
