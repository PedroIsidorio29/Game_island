import 'package:bonfire/bonfire.dart';

import 'sprite_itens.dart';

class Coin extends GameDecoration {
  Coin(Vector2 position)
      : super.withAnimation(animation: SpriteItens.coin, position: position, size: Vector2(13,13));
  }