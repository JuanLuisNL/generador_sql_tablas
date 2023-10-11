import 'package:flutter/material.dart';

import 'global.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return  Container(
      color: Colors.blueGrey.shade200,
        child: Center(child: ElevatedButton(onPressed: onPressed, child: const Text("Generar"))));
  }

  Future<void> onPressed() async {
    await GBL.init();
  }
}
