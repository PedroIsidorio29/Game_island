import 'package:game_island/entities/gizela/gizela.dart';

import 'entities/goblin/goblin.dart';
import 'entities/slime/slime.dart';
import 'entities/player/jogador.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

import 'itens/fogueira.dart';

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
          
        },
      ),


      player: Jogador(Vector2(3 * size, 4 * size)),

lightingColorGame:Color.fromARGB(69, 0, 0, 0),
      cameraConfig: CameraConfig(
          moveOnlyMapArea: true,
          zoom: 1,
          smoothCameraEnabled: true,
          sizeMovementWindow: Vector2(size * 3, size * 3)),


      joystick: Joystick(
          directional: JoystickDirectional(),
          keyboardConfig: KeyboardConfig(
              keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows),
          actions: [
            JoystickAction(
              actionId: 1,
              color: Color.fromARGB(255, 235, 118, 118),
              margin: EdgeInsets.only(
                bottom: screenSize.height * 0.1,
                right: screenSize.width * 0.1,
              ),
            )
          ]),

    );
  }
}
