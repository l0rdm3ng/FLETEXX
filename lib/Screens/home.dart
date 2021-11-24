import 'package:fletexx/Screens/mapa.dart';
import 'package:fletexx/components/bottom_app_bar.dart';
import 'package:fletexx/components/drawer.dart';
import 'package:fletexx/components/fab.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          elevation: 30,
          toolbarHeight: 80,
          leading: const Icon(
            Icons.menu,
            color: Colors.transparent,
          ),
          centerTitle: true,
          title: const Text("FLETEXX",
              style: TextStyle(
                  fontFamily: "Mohave",
                  fontSize: 50,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white)),
        ),
        drawer: const MyDrawer(), // Drawer de la app
        body: const Inicio(),
        floatingActionButton: const MyFab(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const MyBottomAppBar(),
        );
  }
}

// Esta clase es la encargada de mostrar las paginas
// Esta clase es la encargada de mostrar la primer vista del Home
class Inicio extends StatelessWidget {
  const Inicio({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Mapa();
  }
}
