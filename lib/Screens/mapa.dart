import 'package:flutter/material.dart';
class Mapa extends StatelessWidget {
  const Mapa({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Image.network(
            'https://storage.googleapis.com/support-forums-api/attachment/thread-21950169-15070763766771596119.png',
      
          ),
        ),
      ],
    );
  }
}
