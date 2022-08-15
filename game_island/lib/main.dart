import 'package:game_island/entities/gizela/gizela.dart';

import 'entities/goblin/goblin.dart';
import 'entities/slime/slime.dart';
import 'entities/player/jogador.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

import 'itens/coin.dart';
import 'itens/fogueira.dart';
import 'itens/life_potion.dart';
import 'itens/max_potion.dart';
import 'itens/poison_potion.dart';
import 'itens/strength_potion.dart';

void main() {
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
    var screenSize = MediaQuery.of(context).size;
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
      player: Jogador(Vector2(3 * size, 4 * size)),
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
              margin: EdgeInsets.only(
                bottom: screenSize.height * 0.1,
                right: screenSize.width * 0.1,
              ),
            )
          ]),
    );
  }
}
