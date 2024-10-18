# flutter_navigation_manip

## Introduction

Ce projet pédagogique a pour objectif de mettre en pratique plusieurs concepts fondamentaux de Flutter, tels que la navigation entre écrans et la gestion des dialogues (alertes). Ce projet est conçu pour les débutants souhaitant se familiariser avec les bases de Flutter et apprendre à créer des applications multi-écrans avec des interactions utilisateur.

## Fonctionnalités abordées

### 1. Navigation entre écrans

Le projet explore la navigation entre différentes pages en utilisant les outils suivants :

- **Navigator.push** et **Navigator.pop** pour gérer la transition d'un écran à un autre.
- **Navigator.pushNamed** pour implémenter des routes nommées, ce qui facilite la navigation dans des projets plus larges.
- **MaterialPageRoute** et **PageRouteBuilder** pour personnaliser les animations de transition entre les écrans.

### 2. Passage de données entre écrans

Nous avons également appris à passer des données d'un écran à un autre en utilisant les arguments des routes ou via des constructeurs d'écran. Par exemple, nous passons un `itemID` à l'écran des détails, qui affiche les informations correspondantes.

### 3. Personnalisation des animations

L'animation de transition entre les écrans a été personnalisée grâce à l'utilisation de **PageRouteBuilder** et de la **SlideTransition**. Cela nous permet de contrôler l'animation d'apparition et de disparition des pages, avec des transitions douces.

### 4. Gestion des dialogues (AlertDialog)

Nous avons également vu comment afficher des dialogues modaux à l'aide de **AlertDialog**. Un `AlertDialog` permet d'afficher des informations ou de proposer des actions à l'utilisateur :

- Création de boîtes de dialogue avec un titre, un contenu et des actions.
- Utilisation de **TextButton** pour offrir des options à l'utilisateur (par exemple, OK et Annuler).

## Exemples de code

### Navigation entre les écrans

Nous avons utilisé **Navigator** pour gérer la navigation. Exemple :

```dart
Navigator.pushNamed(context, "/details");
```

### Passage de données

Lors de la navigation vers l'écran des détails, nous avons passé un itemID via le constructeur :

```dart
MaterialPageRoute(
  builder: (context) => DetailsScreen(itemID: "Zorro"),
);
```

### Affichage d'un AlertDialog

L'exemple suivant montre comment afficher un AlertDialog avec deux boutons d'action :

```dart
void _showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Titre du dialog"),
        content: Text("Contenu du dialog"),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("Annuler"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("OK"),
          ),
        ],
      );
    },
  );
}
```

## Technologies utilisées

Flutter : Framework utilisé pour le développement de l'application.
Dart : Langage de programmation pour Flutter.
