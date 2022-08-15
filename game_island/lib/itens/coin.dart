import 'package:bonfire/bonfire.dart';
import 'package:game_island/entities/player/jogador.dart';

import 'sprite_itens.dart';

class Coin extends GameDecoration with Sensor {
  Coin(Vector2 position)
      : super.withAnimation(
          animation: SpriteItens.coin,
          position: position,
          size: Vector2(13, 13),
        );

  @override
  void onContact(GameComponent component) {
       if (component is Jogador) {
      removeFromParent();
      component.addPontuacao(5);
    }
  }
}
