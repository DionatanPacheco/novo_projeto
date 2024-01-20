import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/patagonia/patagonia_model/patagonia_model.dart';
import 'package:novo_projeto/page/home/home_historia_mundo/drawer_item.dart';

class DrawerPatagoniaPers extends StatefulWidget {
  const DrawerPatagoniaPers({Key? key}) : super(key: key);

  @override
  State<DrawerPatagoniaPers> createState() => _DrawerPatagoniaPersState();
}

var drawerItems = [
  DrawerItem(
      title: 'Jaarl Erobe',
      description: Strings.patjarlerobe,
      image: 'assets/imagens/npcs/jaarlErobe.jpg'),
  DrawerItem(
      title: 'Matias Santiago',
      description: Strings.patmatias,
      image: 'assets/imagens/npcs/Ranger1.jpg'),
  DrawerItem(
      title: 'Yosep O Sábio',
      description: Strings.patyosep,
      image: 'assets/imagens/npcs/yosep.jpg'),
  DrawerItem(
      title: 'Las Hienas',
      description: Strings.patlashienas,
      image: 'assets/imagens/npcs/lashienas.jpeg')
];

class _DrawerPatagoniaPersState extends State<DrawerPatagoniaPers> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.2;
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        UserAccountsDrawerHeader(
          accountName: const Text(
            'Patagonia',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          accountEmail: const Text(
            'Personalidades e Grupos',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset("assets/imagens/mapas/americadosul.jpeg"),
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.black12, Colors.blueGrey]),
          ),
        ),
        ListView(
          shrinkWrap: true,
          children: drawerItems
              .map(
                (item) => InkWell(
                  onTap: () {
                    showdialogfunc(
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
                                        color:
                                            Color.fromARGB(221, 252, 251, 251),
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
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Colors.black12, Colors.blueGrey]),
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
                              color: Color.fromARGB(221, 252, 250, 250)),
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
