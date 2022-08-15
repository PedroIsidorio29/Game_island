import 'package:bonfire/bonfire.dart';
import '../entities/player/jogador.dart';
import 'sprite_itens.dart';

class LifePotion extends GameDecoration with Sensor {
  LifePotion(Vector2 position)
      : super.withSprite(
          sprite: SpriteItens.lifePotion,
          position: position,
          size: Vector2(13, 13),
        );

  @override
  void onContact(GameComponent component) {
    if (component is Jogador) {
      if (component.life < 150) {
        component.addLife(25);
        removeFromParent();
      }
    }
  }
}
