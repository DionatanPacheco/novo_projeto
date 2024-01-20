import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/uruguai/model_uruguai/model_uruguai.dart';
import 'package:novo_projeto/page/home/home_historia_mundo/drawer_item.dart';

class DrawerUruguai extends StatefulWidget {
  const DrawerUruguai({Key? key}) : super(key: key);

  @override
  State<DrawerUruguai> createState() => _DrawerUruguaiState();
}

var drawerItems = [
  DrawerItem(
      title: 'Montevidéu',
      description: Strings.urugmontivideu,
      image: 'assets/imagens/cidades/cidadegrande.jpg'),
  DrawerItem(
      title: 'Colonia\n' 'Sacramento',
      description: Strings.urugcoloniasac,
      image: 'assets/imagens/cidades/cidadeporto.jpg'),
  DrawerItem(
      title: 'Salto',
      description: Strings.urugsalto,
      image: 'assets/imagens/npcs/Gnolls.jpg')
];

class _DrawerUruguaiState extends State<DrawerUruguai> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.2;
    return Drawer(
      child:
          ListView(shrinkWrap: true, scrollDirection: Axis.vertical, children: [
        const UserAccountsDrawerHeader(
          accountName: Text('Uruguai',
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
        ListView(
          shrinkWrap: true,
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
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Colors.black12, Colors.blueGrey])),
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
                            color: Color.fromARGB(221, 249, 248, 248)),
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
