import 'package:fletexx/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
// Esta clase es la encargada de mostrar el menu lateral
class MyDrawer extends StatelessWidget {
  const MyDrawer({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xff00acb6)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              accountName: Text("Ivan Meng"),
              accountEmail: Text("ivan.meng.epet20@gmail.com")),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Cerrar sesión"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  const loginScreen = LoginScreen(key: null,);
                  return loginScreen;
                },
              ));
            },
          )
        ],
      ),
    );
  }
}


