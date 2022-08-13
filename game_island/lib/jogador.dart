import 'package:bonfire/bonfire.dart';
import 'package:game_island/sprite_jogador.dart';

class Jogador extends SimplePlayer with ObjectCollision {
  Jogador(Vector2 position)
      : super(
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
// @override
//   bool onCollision(GameComponent component, bool active) {
//     print(component);
//     print(active);
//     return super.onCollision(component, active);
//   }

}

