import 'package:flutter/material.dart';
import 'package:fletexx/Screens/home.dart';

class MyFab extends StatelessWidget {
  const MyFab({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xffbd6a70),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                backgroundColor: const Color(0xff00acb6),
                content: Form(
                    child: Column(
                  children: [
                    const Text(
                      "Origen del Pedido",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            labelText: 'Dirección',
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: IconButton(
                              iconSize: 20,
                              padding: const EdgeInsets.all(10),
                              icon: const Icon(Icons.home),
                              onPressed: () {
                                // ignore: avoid_print
                                print('hi');
                              },
                              color: Colors.black,
                            ),
                          )),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 10,
                            padding: const EdgeInsets.all(10),
                            primary: Colors.white),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Home(),
                          ));
                        },
                        child: const Text(
                          "Seleccionar ubicación",
                          style: TextStyle(color: Colors.cyan, fontSize: 16),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            labelText: 'Código postal',
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: IconButton(
                              iconSize: 20,
                              padding: const EdgeInsets.all(10),
                              icon: const Icon(Icons.mail),
                              onPressed: () {
                                print('hi');
                              },
                              color: Colors.black,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            labelText: 'Fechas disponibles',
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: IconButton(
                              iconSize: 20,
                              padding: const EdgeInsets.all(10),
                              icon: const Icon(Icons.calendar_today_sharp),
                              onPressed: () {
                                // ignore: avoid_print
                                print('hi');
                              },
                              color: Colors.black,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            labelText: 'Horarios disponibles',
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: IconButton(
                              iconSize: 20,
                              padding: const EdgeInsets.all(10),
                              icon: const Icon(Icons.alarm),
                              onPressed: () {
                                // ignore: avoid_print
                                print('hi');
                              },
                              color: Colors.black,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 30,
                                padding: const EdgeInsets.all(5),
                                primary: Colors.white),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Home(),
                              ));
                            },
                            child: const Text(
                              "Añadir pedido",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                            )),
                      ),
                    )
                  ],
                ))));
      },
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
