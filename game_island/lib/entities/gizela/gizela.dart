import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';

import '../player/sprite_jogador.dart';
import 'sprite_gizela.dart';

bool talk = true;

class Gizela extends SimpleNpc with ObjectCollision {
  Gizela(Vector2 position)
      : super(
            position: position,
            size: Vector2(14, 14),
            animation: SimpleDirectionAnimation(
              idleLeft: SpriteGizela.gizelaStaticLeft,
              idleRight: SpriteGizela.gizelaStaticRight,
              runRight: SpriteGizela.gizelaRunRight,
            )) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(size: Vector2(14, 14)),
        ],
      ),
    );
  }

  @override
  void update(double dt) {
    seePlayer(
        radiusVision: 45,
        observed: (player) => {
              if (talk)
                {
                  TalkDialog.show(context, [
                    Say(
                        header: const Text('Gizelda',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        text: [
                          const TextSpan(
                              text:
                                  'Olá viajante vejo que você está aqui para participar da provação!'),
                        ],
                        person: SpriteGizela.gizelaStaticLeft.asWidget(),
                        personSayDirection: PersonSayDirection.RIGHT),
                    Say(
                        header: const Text('Guerreiro',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        text: [
                          const TextSpan(
                              text:
                                  'Na verdade eu estava indo pra casa, acabei me perdendo e '),
                        ],
                        person: SpriteJogador.playerStaticoRight.asWidget(),
                        personSayDirection: PersonSayDirection.LEFT),
                    Say(
                        header: const Text('Gizelda',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        text: [
                          const TextSpan(
                              text:
                                  'Por favor, não diga mais nada é exatamente de um guerreiro como você que estavamos precisando'),
                        ],
                        person: SpriteGizela.gizelaStaticLeft.asWidget(),
                        personSayDirection: PersonSayDirection.RIGHT),
                    Say(
                        header: const Text('Guerreiro',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        text: [
                          const TextSpan(text: 'Mas moça eu tenho que '),
                        ],
                        person: SpriteJogador.playerStaticoRight.asWidget(),
                        personSayDirection: PersonSayDirection.LEFT),
                    Say(
                        header: const Text('Gizelda',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        text: [
                          const TextSpan(
                              text:
                                  'SHIIIII... Vá e lute, lute com a sua vida'),
                        ],
                        person: SpriteGizela.gizelaStaticLeft.asWidget(),
                        personSayDirection: PersonSayDirection.RIGHT),
                    Say(
                        header: const Text('Gizelda',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        text: [
                          const TextSpan(
                              text:
                                  'A e antes que eu me esqueça, existem diversos itens espalhados por ai.'),
                        ],
                        person: SpriteGizela.gizelaStaticLeft.asWidget(),
                        personSayDirection: PersonSayDirection.RIGHT),
                    Say(
                        header: const Text('Gizelda',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        text: [
                          const TextSpan(
                              text:
                                  'As poções em sí são bem especiais, existem as azuis que te deixam mais forte, e as vermelhas que almentam sua vitalidade, se der sorte pode até mesmo encontrar as roxas que te deixam ridiculamente poderoso, mas se eu fosse você tomaria cuidado com as verdes.'),
                        ],
                        person: SpriteGizela.gizelaStaticLeft.asWidget(),
                        personSayDirection: PersonSayDirection.RIGHT),
                    Say(
                        header: const Text('Guerreiro',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        text: [
                          const TextSpan(text: '...'),
                        ],
                        person: SpriteJogador.playerStaticoRight.asWidget(),
                        personSayDirection: PersonSayDirection.LEFT),
                  ]),
                  talk = false
                }
            });
    super.update(dt);
  }
}
