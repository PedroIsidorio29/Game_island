import 'package:bonfire/bonfire.dart';
import '../entities/goblin/goblin.dart';

class GoblinRespawController extends StateController<Goblin> {
  respawn() {
    final hasGameRef = component?.hasGameRef ?? false;
    if (hasGameRef && !gameRef.camera.isMoving) {
      final goblin = Goblin(Vector2(416, 416));
      gameRef.add(goblin);
    }
  }

  @override
  void update(double dt, component) {}
}
