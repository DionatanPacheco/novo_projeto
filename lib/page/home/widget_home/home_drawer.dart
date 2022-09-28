import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/home_america_do_sul.dart';

import '../../start_page/start_page.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  accountName: const Text('Novo Mundo',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  accountEmail: const Text(
                    'Continentes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset("assets/imagens/mapas/mapaicon.jpg"),
                  ),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Colors.black12, Colors.blueGrey]),
                  ),
                ),
                InkWell(
                  child: SingleChildScrollView(
                    reverse: true,
                    scrollDirection: Axis.vertical,
                    child: ListTile(
                      leading:
                          Image.asset('assets/imagens/mapas/americadosul.jpeg'),
                      title: const Text(
                        'America do Sul',
                        style: TextStyle(color: Color.fromARGB(221, 8, 8, 8)),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HomeAmericaDoSul()));
                      },
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.vpn_lock_rounded,
                    color: Color.fromARGB(221, 8, 8, 8),
                  ),
                  title: const Text(
                    'America Central',
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
                    'America do Norte',
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
                    'Africa',
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
                    'Asia',
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
                    'Europa Ocidental',
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
                    'Europa Oriental',
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
                    'Oceania',
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
                              builder: (context) => const StartPage()));
                    }),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.grey,
      );
}
