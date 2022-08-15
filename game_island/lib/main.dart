import 'itens/coin.dart';
import 'itens/fogueira.dart';
import 'itens/max_potion.dart';
import 'itens/life_potion.dart';
import 'itens/poison_potion.dart';
import 'entities/slime/slime.dart';
import 'itens/strength_potion.dart';
import 'entities/goblin/goblin.dart';
import 'entities/player/jogador.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:game_island/interface/interface.dart';
import 'package:game_island/entities/gizela/gizela.dart';
import 'package:game_island/controller/goblin_controller.dart';
import 'package:game_island/controller/slime_controller.dart';

void main() {
  BonfireInjector.instance.put((i) => GoblinRespawController());
  BonfireInjector.instance.put((i) => SlimeRespawController());
  runApp(const MyGame());
}

const double size = 16;

class MyGame extends StatelessWidget {
  const MyGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Island',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black26),
      home: const GameInit(),
    );
  }
}

class GameInit extends StatelessWidget {
  const GameInit({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Jogador player = Jogador(Vector2(3 * size, 4 * size));
    return BonfireTiledWidget(
      map: TiledWorldMap(
        "map/map.json",
        objectsBuilder: {
          'slime': (properties) => Slime(properties.position),
          'goblin': (properties) => Goblin(properties.position),
          'gizela': (properties) => Gizela(properties.position),
          'fogueira': (properties) => Fogueira(properties.position),
          'max': (properties) => MaxPotion(properties.position),
          'veneno': (properties) => PoisonPotion(properties.position),
          'vida': (properties) => LifePotion(properties.position),
          'forca': (properties) => StrengthPotion(properties.position),
          'coin': (properties) => Coin(properties.position),
        },
      ),
      player: player,
      overlayBuilderMap: {
        Interface.overKey: (context, game) => Interface(player: player)
      },
      initialActiveOverlays: const [Interface.overKey],
      lightingColorGame: const Color.fromARGB(69, 0, 0, 0),
      cameraConfig: CameraConfig(
          // moveOnlyMapArea: true,
          zoom: 2,
          // smoothCameraEnabled: true,
          sizeMovementWindow: Vector2(size * 3, size * 3)),
      joystick: Joystick(
          directional: JoystickDirectional(
            color: const Color.fromARGB(255, 106, 170, 255),
          ),
          keyboardConfig: KeyboardConfig(
              keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows),
          actions: [
            JoystickAction(
              actionId: 1,
              color: const Color.fromARGB(255, 106, 170, 255),
              margin:const EdgeInsets.only(
                bottom: 30,
                right: 20,
              ),
            )
          ]),
    );
  }
}
