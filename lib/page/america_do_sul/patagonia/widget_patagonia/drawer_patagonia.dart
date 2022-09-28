import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/patagonia/patagonia_model/patagonia_model.dart';

class DrawerPatagonia extends StatefulWidget {
  const DrawerPatagonia({Key? key}) : super(key: key);

  @override
  State<DrawerPatagonia> createState() => _DrawerPatagoniaState();
}

var titleList = [
  'Principais\n' 'Caracteristicas',
  'Sobre',
  'Vida e sociedade',
  'Concepción',
  'Tierra de Los Jarl',
  'Tierra de\n' 'Los Fuegos',
  'Torres del Pane',
];
var descrilist = [
  Strings.patcaract,
  Strings.patagoniadados,
  Strings.patvidasociedade,
  Strings.patconcepcion,
  Strings.pattierrajaarl,
  Strings.pattierrafuego,
  Strings.pattorredelpaine,
];
var imglist = [
  'assets/imagens/cidades/cordilheira.jpg',
  'assets/imagens/cidades/cordilheira.jpg',
  'assets/imagens/cidades/cordilheira2.png',
  'assets/imagens/cidades/cidamontanha.jpg',
  'assets/imagens/cidades/forte.jpg',
  'assets/imagens/cidades/vilarejo.jpg',
  'assets/imagens/cidades/cordilheira3.jpg'
];

class _DrawerPatagoniaState extends State<DrawerPatagonia> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.2;
    return Drawer(
      child:
          ListView(shrinkWrap: true, scrollDirection: Axis.vertical, children: [
        const UserAccountsDrawerHeader(
          accountName: Text('Patagonia',
              style: TextStyle(
                  color: Colors.black87,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
          accountEmail: Text(
            'Cidades',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.network_locked),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.black12, Colors.blueGrey]),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: imglist.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  showdialogfunc(context, imglist[index], titleList[index],
                      descrilist[index]);
                },
                child: Card(
                  shadowColor: Colors.grey,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SizedBox(
                          width: 100,
                          height: 100,
                          child:
                              Image.asset(imglist[index], fit: BoxFit.cover)),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              titleList[index],
                              style: const TextStyle(
                                  color: Colors.black87,
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
                                    color: Colors.black87,
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
              );
            })
      ]),
    );
  }

  showdialogfunc(
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
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                padding: const EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width * 1.0,
                height: 600,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
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
                              color: Color.fromARGB(221, 255, 254, 254)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
