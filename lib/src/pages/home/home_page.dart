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
  final homeStore = Modular.get<HomeStore>();
  @override
  void initState() {
    super.initState();
    homeStore.init();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: homeStore,
        builder: (BuildContext context, Widget? child) {
          return Scaffold(
            appBar: AppBar(
              leading: homeStore.forceModularPop
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Modular.to.navigate(homeStore.goToPath!);
                        homeStore.clearForceModularPop();
                      },
                    )
                  : null,
              title: const Text('Home Page'),
            ),
            body: const Row(
              children: [
                Expanded(child: RouterOutlet()),
              ],
            ),
            bottomNavigationBar: NavigationBar(
              indicatorColor: Colors.blueGrey[200],
              selectedIndex: homeStore.currentPageIndex,
              destinations: [
                CustomListTile(
                  title: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.dashboard),
                        Text('Dashboard'),
                      ]),
                  onTap: () => homeStore.currentPageIndex = 0,
                  selected: (homeStore.currentPageIndex == 0),
                ),
                CustomListTile(
                  title: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.list),
                        Text('Lists'),
                      ]),
                  onTap: () => homeStore.currentPageIndex = 1,
                  selected: (homeStore.currentPageIndex == 1),
                ),
                CustomListTile(
                  title: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings),
                        Text('Settings'),
                      ]),
                  onTap: () => homeStore.currentPageIndex = 2,
                  selected: (homeStore.currentPageIndex == 2),
                ),
              ],
            ),
          );
        });
  }
}
