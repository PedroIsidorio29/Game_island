import 'package:bonfire/bonfire.dart';
import '../entities/player/jogador.dart';
import 'sprite_itens.dart';

class PoisonPotion extends GameDecoration with Sensor {
  PoisonPotion(Vector2 position)
      : super.withSprite(
          sprite: SpriteItens.poisonPotion,
          position: position,
          size: Vector2(13, 13),
        );

  @override
  void onContact(GameComponent component) {
    if (component is Jogador) {
      component.addLife(-35);
      removeFromParent();
    }
  }
}
