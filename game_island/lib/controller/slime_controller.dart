import 'package:bonfire/bonfire.dart';
import 'package:game_island/entities/slime/slime.dart';

class SlimeRespawController extends StateController<Slime> {

respawn() {
    final hasGameRef = component?.hasGameRef ?? false;
    if (hasGameRef && !gameRef.camera.isMoving) {
      final goblin = Slime( Vector2(368,416));
      gameRef.add(goblin);
    }
  }

  @override
  void update(double dt, component) {}
}