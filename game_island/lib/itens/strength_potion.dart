import 'package:bonfire/bonfire.dart';
import '../entities/player/jogador.dart';
import 'sprite_itens.dart';

class StrengthPotion extends GameDecoration with Sensor {
  StrengthPotion(Vector2 position)
      : super.withSprite(
          sprite: SpriteItens.strengthPotion,
          position: position,
          size: Vector2(13, 13),
        );

  @override
  void onContact(GameComponent component) {
    if (component is Jogador) {
      component.addForca(5);
      removeFromParent();
    }
  }
}
