import 'package:bonfire/bonfire.dart';
import '../entities/player/jogador.dart';
import 'sprite_itens.dart';

class MaxPotion extends GameDecoration with Sensor {
  MaxPotion(Vector2 position)
      : super.withSprite(
          sprite: SpriteItens.maxPotion,
          position: position,
          size: Vector2(13, 13),
        );

  @override
  void onContact(GameComponent component) {
    if (component is Jogador) {
      component.addForca(12);
      component.addLife(45);
      removeFromParent();
    }
  }
}
