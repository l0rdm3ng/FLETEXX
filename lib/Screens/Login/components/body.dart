import 'package:flutter/material.dart';
import 'package:fletexx/Screens/Register/signup_screen.dart';
import 'package:fletexx/components/already_have_an_account_acheck.dart';
import 'package:fletexx/components/rounded_button.dart';
import 'package:fletexx/components/rounded_input_field.dart';
import 'package:fletexx/components/rounded_password_field.dart';
class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff00acb6),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/icon.png",
            ),
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
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {}, key: null,
            ),
            RoundedPasswordField(
              onChanged: (value) {}, key: null,
            ),
            RoundedButton(
              text: "INICIAR SESION",
              press: () {}, key: null, style: null,
            ),
            AlreadyHaveAnAccountCheck(
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
    );
  }
}
