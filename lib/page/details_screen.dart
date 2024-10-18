import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String itemID;

  DetailsScreen({super.key, required this.itemID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecran détails"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ItemID -> $itemID"),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context, "Résultat depuis DetailScreen");
              },
              icon: Icon(Icons.arrow_back),  // Ajout de l'icône manquante
              label: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
