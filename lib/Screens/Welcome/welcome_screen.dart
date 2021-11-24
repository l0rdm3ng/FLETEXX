import 'package:fletexx/Screens/home.dart';
import 'package:fletexx/services/google_service.dart';
import 'package:flutter/material.dart';
import 'package:fletexx/Screens/Welcome/components/body.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child: StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                final provider = Provider.of<GoogleSignInProvider>(
                  context,
                );
                if (provider.isSigningIn) {
                  return buildLoading();
                } else if (snapshot.hasData) {
                  return const Home();
                } else {
                  return const Body();
                }
              }),
        ),
      );
  Widget buildLoading() => const Center(child: CircularProgressIndicator());
}
