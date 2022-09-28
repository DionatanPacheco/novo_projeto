// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:novo_projeto/page/home/home_historia_mundo/home_hist_arq.dart';

class HomeDrawerHistoria extends StatefulWidget {
  const HomeDrawerHistoria({Key? key}) : super(key: key);

  @override
  State<HomeDrawerHistoria> createState() => _HomeDrawerHistoriaState();
}

class _HomeDrawerHistoriaState extends State<HomeDrawerHistoria> {
  var titlelist = [
    'História', //1
    'Cronologia', //2
    'Religião', //3
    'Raças', //4
    'A Terra do Novo Mundo', //5
    'O povo da Terra', //6
    'Povos Selvagens', //7
    'Herois e Vilões', //8
    'Um Mundo de Magia\n E "tecnologia"', //9
    'Magos, Sacerdotes,\n Alquimistas e Mecânicos', //10
    'A campanha no Novo Mundo' //11
  ];

  var desclist = [
    Strings.homhist, //1
    Strings.homcronologia, //2
    Strings.homreligiao, //3
    Strings.homraca, //4
    Strings.homaterra, //5
    Strings.hompovos, //6
    Strings.homselvagen, //7
    Strings.homheroisvilao, //8
    Strings.hommagia, //9
    Strings.hommagossacerdotes, //10
    Strings.homcampanha, //11
  ];
  var imglist = [
    'assets/imagens/fotoentrada.jpg', //1
    'assets/imagens/cronologia.jpg', //2
    'assets/imagens/religiao.jpg', //3
    'assets/imagens/npcs/Raças-2.jpg', //4
    'assets/imagens/npcs/terramundo.jpg', //5
    'assets/imagens/npcs/povoterra.jpeg', //6
    'assets/imagens/npcs/selvagens.jpg', //7
    'assets/imagens/npcs/campanha.jpg', //8
    'assets/imagens/npcs/npcs.jpg', //9
    'assets/imagens/npcs/magos.jpg', //10
    'assets/imagens/npcs/heroi.jpg', //11
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.2;
    return Drawer(
      backgroundColor: Colors.grey,
      child: ListView.builder(
        itemCount: imglist.length,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                showDialogFunc(
                    context, imglist[index], titlelist[index], desclist[index]);
              },
              child: Card(
                shadowColor: Colors.grey,
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          imglist[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              titlelist[index],
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
              ));
        },
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
