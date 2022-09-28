import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/peru/model_peru/model_peru.dart';

class DrawerPeru extends StatefulWidget {
  const DrawerPeru({Key? key}) : super(key: key);

  @override
  State<DrawerPeru> createState() => _DrawerPeruState();
}

var titleList = [
  'Caracterista',
  'Iquitos',
  'Cajamarca',
  'Cusco',
  'Lima',
];
var descrilist = [
  Strings.perucarac,
  Strings.peruiquitos,
  Strings.perucajamarca,
  Strings.perucusco,
  Strings.perulima
];
var imglist = [
  'assets/imagens/cidades/cidadegrande.jpg',
  'assets/imagens/cidades/cidadegrande.jpg',
  'assets/imagens/cidades/vilarejo.jpg',
  'assets/imagens/cidades/cidadegrande.jpg',
  'assets/imagens/cidades/cidadegrande.jpg',
];

class _DrawerPeruState extends State<DrawerPeru> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.2;
    return Drawer(
      child:
          ListView(shrinkWrap: true, scrollDirection: Axis.vertical, children: [
        const UserAccountsDrawerHeader(
          accountName: Text('Peru',
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
                  showDialogFunc(context, imglist[index], titleList[index],
                      descrilist[index]);
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
                ),
              );
            })
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
                            color: Color.fromARGB(221, 248, 247, 247)),
                        textAlign: TextAlign.center,
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
