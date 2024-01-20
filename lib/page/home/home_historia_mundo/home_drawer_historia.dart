// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:novo_mundo/page/home/home_historia_mundo/home_hist_arq.dart';

import 'drawer_item.dart';

class HomeDrawerHistoria extends StatefulWidget {
  const HomeDrawerHistoria({Key? key}) : super(key: key);

  @override
  State<HomeDrawerHistoria> createState() => _HomeDrawerHistoriaState();
}

class _HomeDrawerHistoriaState extends State<HomeDrawerHistoria> {
  ///Diferente de como estava implementado com tres listas, dessa forma podemos ter somente uma lista de objetos com mais de uma propriedade.
  ///Nesse caso, imagem, titulo e descrição.
  var drawerItems = [
    DrawerItem(
      title: 'História',
      description: Strings.homhist,
      image: 'assets/imagens/fotoentrada.jpg',
    ),
    DrawerItem(
      title: 'Cronologia',
      description: Strings.homcronologia,
      image: 'assets/imagens/cronologia.jpg',
    ),
    DrawerItem(
      title: 'Religião',
      description: Strings.homreligiao,
      image: 'assets/imagens/religiao.jpg',
    ),
    DrawerItem(
      title: 'Raças',
      description: Strings.homraca,
      image: 'assets/imagens/npcs/Raças-2.jpg',
    ),
    DrawerItem(
      title: 'A Terra do Novo Mundo',
      description: Strings.homaterra,
      image: 'assets/imagens/npcs/terramundo.jpg',
    ),
    DrawerItem(
      title: 'O povo da Terra',
      description: Strings.hompovos,
      image: 'assets/imagens/npcs/povoterra.jpeg',
    ),
    DrawerItem(
      title: 'Povos Selvagens',
      description: Strings.homselvagen,
      image: 'assets/imagens/npcs/selvagens.jpg',
    ),
    DrawerItem(
      title: 'Herois e Vilões',
      description: Strings.homheroisvilao,
      image: 'assets/imagens/npcs/campanha.jpg',
    ),
    DrawerItem(
      title: 'Um Mundo de Magia\n E "tecnologia"',
      description: Strings.hommagia,
      image: 'assets/imagens/npcs/npcs.jpg',
    ),
    DrawerItem(
      title: 'Magos, Sacerdotes,\n Alquimistas e Mecânicos',
      description: Strings.hommagossacerdotes,
      image: 'assets/imagens/npcs/magos.jpg',
    ),
    DrawerItem(
      title: 'A campanha no Novo Mundo',
      description: Strings.homcampanha,
      image: 'assets/imagens/npcs/heroi.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.2;
    return Drawer(
      backgroundColor: Colors.grey,
      child: ListView(
        children: drawerItems
            .map(
              (item) => InkWell(
                onTap: () {
                  showDialogFunc(
                    context,
                    item.image,
                    item.title,
                    item.description,
                  );
                },
                child: Card(
                  shadowColor: Colors.grey,
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //Se quiser que a imagem seja em um círculo perfeito, então comenta essa linha [borderRadius] e descomenta a linha abaixo [shape].
                            //As duas propriedade não podem ser usadas em conjunto pq o Flutter não permite.
                            borderRadius: BorderRadius.circular(5),

                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(item.image),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                item.title,
                                style: const TextStyle(
                                    color: Color.fromARGB(221, 10, 10, 10),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: width,

                                ///Eu imagino que aqui vc queira usar a descrição. Não alterei pq não sei como quer implementar.
                                child: const Text(
                                  '',
                                  style: TextStyle(
                                      color: Color.fromARGB(221, 252, 251, 251),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  showDialogFunc(
    context,
    img,
    title,
    desc,
  ) {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.black12, Colors.blueGrey]),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.only(top: 1),
                width: MediaQuery.of(context).size.width * 1.0,
                height: 600,
                child: SingleChildScrollView(
                  clipBehavior: Clip.antiAlias,
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          img,
                          height: 500,
                          width: 500,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        desc,
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(221, 246, 245, 245)),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
