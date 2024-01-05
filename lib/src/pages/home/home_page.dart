import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_compartilhada/src/core/widgets/custom_list_tile.dart';
import 'package:lista_compartilhada/src/pages/home/home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final store = Modular.get<HomeStore>();
  @override
  void initState() {
    super.initState();
    store.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: const Row(
        children: [
          Expanded(child: RouterOutlet()),
        ],
      ),
      bottomNavigationBar: ListenableBuilder(
          listenable: store,
          builder: (BuildContext context, Widget? child) {
            return NavigationBar(
              indicatorColor: Colors.blueGrey[200],
              selectedIndex: store.currentPageIndex,
              destinations: [
                CustomListTile(
                  title: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.dashboard),
                        Text('Dashboard'),
                      ]),
                  onTap: () => store.currentPageIndex = 0,
                  selected: (store.currentPageIndex == 0),
                ),
                CustomListTile(
                  title: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.list),
                        Text('Lists'),
                      ]),
                  onTap: () => store.currentPageIndex = 1,
                  selected: (store.currentPageIndex == 1),
                ),
                CustomListTile(
                  title: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings),
                        Text('Settings'),
                      ]),
                  onTap: () => store.currentPageIndex = 2,
                  selected: (store.currentPageIndex == 2),
                ),
              ],
            );
          }),
    );
  }
}
