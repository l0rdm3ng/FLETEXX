import 'package:fletexx/Screens/home.dart';
import 'package:fletexx/services/google_service.dart';
import 'package:flutter/material.dart';
import 'package:fletexx/Screens/Login/login_screen.dart';
import 'package:fletexx/Screens/Register/signup_screen.dart';
import 'package:fletexx/components/rounded_button.dart';
import 'package:fletexx/components/rounded_button_google.dart';
import 'package:fletexx/constants.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _googleService = Provider.of<GoogleSignInProvider>(context);
    // This size provide us total height and width of our screen
    return Scaffold(
      backgroundColor: const Color(0xff00acb6),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Positioned(
                  bottom: 0,
                  left: 0,
                  height: 200,
                  child: Image.asset(
                    "assets/images/icon.png",
                  )),
              const Text(
                "FLETEXX",
                style: TextStyle(
                    fontFamily: "Mohave",
                    fontSize: 70,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
              RoundedButton(
                text: "INICIAR SESION",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  );
                },
              ),
              RoundedButtonG(
                text: "OOGLE",
                press: () async {
                  final user = await _googleService.user();
                  if (user != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Home();
                        },
                      ),
                    );
                  }
                },
              ),
              RoundedButton(
                text: "REGISTRARSE",
                color: kPrimaryColor,
                textColor: Colors.white,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
