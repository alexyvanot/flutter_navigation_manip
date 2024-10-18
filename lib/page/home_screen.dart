import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecran d'accueil"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var result = await Navigator.pushNamed(context, "/details",
            arguments: "Hulk");
            print(result);
          },
          child: Text("Aller aux détails"),
        ),
      ),
    );
  }
}

