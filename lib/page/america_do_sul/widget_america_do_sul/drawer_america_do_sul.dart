import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/bolivia/home_bolivia.dart';
import 'package:novo_projeto/page/america_do_sul/chile/home_chile.dart';
import 'package:novo_projeto/page/america_do_sul/equador/home_equador.dart';
import 'package:novo_projeto/page/america_do_sul/paraguai/home_paraguai.dart';
import 'package:novo_projeto/page/america_do_sul/patagonia/home_patagonia.dart';
import 'package:novo_projeto/page/america_do_sul/peru/home_peru.dart';
import 'package:novo_projeto/page/america_do_sul/uruguai/home_uruguai.dart';

import '../../home/home_page.dart';

class DraweeAmericaDoSul extends StatelessWidget {
  const DraweeAmericaDoSul({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                'America do Sul',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              accountEmail: const Text(
                'Países',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black87),
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
            SingleChildScrollView(
              child: InkWell(
                child: Expanded(
                  child: ListTile(
                    leading: const Icon(
                      Icons.vpn_lock_rounded,
                      color: Colors.black87,
                    ),
                    title: const Text(
                      'Argentina',
                      style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.vpn_lock_rounded,
                color: Color.fromARGB(221, 8, 8, 8),
              ),
              title: const Text(
                'Bolivia',
                style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeBolivia()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.vpn_lock_rounded,
                color: Color.fromARGB(221, 8, 8, 8),
              ),
              title: const Text(
                'Brasil',
                style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.vpn_lock_rounded,
                color: Color.fromARGB(221, 8, 8, 8),
              ),
              title: const Text(
                'Chile',
                style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeChile()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.vpn_lock_rounded,
                color: Color.fromARGB(221, 8, 8, 8),
              ),
              title: const Text(
                'Colombia',
                style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.vpn_lock_rounded,
                color: Color.fromARGB(221, 8, 8, 8),
              ),
              title: const Text(
                'Equador',
                style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeEquador()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.vpn_lock_rounded,
                color: Color.fromARGB(221, 8, 8, 8),
              ),
              title: const Text(
                'Guiana',
                style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.vpn_lock_rounded,
                color: Color.fromARGB(221, 8, 8, 8),
              ),
              title: const Text(
                'Paraguai',
                style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeParaguai()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.vpn_lock_rounded,
                color: Color.fromARGB(221, 8, 8, 8),
              ),
              title: const Text(
                'Patagonia',
                style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePatagonia()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.vpn_lock_rounded,
                color: Color.fromARGB(221, 8, 8, 8),
              ),
              title: const Text(
                'Peru',
                style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePeru()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.vpn_lock_rounded,
                color: Color.fromARGB(221, 8, 8, 8),
              ),
              title: const Text(
                'Suriname',
                style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.vpn_lock_rounded,
                color: Color.fromARGB(221, 8, 8, 8),
              ),
              title: const Text(
                'Uruguai',
                style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeUruguai()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.vpn_lock_rounded,
                color: Color.fromARGB(221, 8, 8, 8),
              ),
              title: const Text(
                'Venezuela',
                style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
              ),
              onTap: () {},
            ),
            ListTile(
                leading: const Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(221, 8, 8, 8),
                ),
                title: const Text(
                  'Sair',
                  style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                }),
          ],
        ),
        backgroundColor: Colors.grey,
      );
}
