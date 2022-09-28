import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/patagonia/patagonia_model/patagonia_model.dart';

class DrawerPatagoniaPers extends StatefulWidget {
  const DrawerPatagoniaPers({Key? key}) : super(key: key);

  @override
  State<DrawerPatagoniaPers> createState() => _DrawerPatagoniaPersState();
}

var titleList = [
  'Jaarl Erobe',
  'Matias Santiago',
  'Yosep O Sábio',
  'Las Hienas',
];
var descrilist = [
  Strings.patjarlerobe,
  Strings.patmatias,
  Strings.patyosep,
  Strings.patlashienas,
];
var imglist = [
  'assets/imagens/npcs/jaarlErobe.jpg',
  'assets/imagens/npcs/Ranger1.jpg',
  'assets/imagens/npcs/yosep.jpg',
  'assets/imagens/npcs/lashienas.jpeg',
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
        ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: imglist.length,
            itemBuilder: (context, index) {
              return InkWell(
                highlightColor: Colors.blue.withOpacity(0.4),
                splashColor: Colors.green.withOpacity(0.5),
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
