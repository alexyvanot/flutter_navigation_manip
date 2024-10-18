import 'package:flutter/material.dart';
import 'package:flutter_navigation_manip/page/details_screen.dart';
import 'package:flutter_navigation_manip/page/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
        ),
        initialRoute: "/",
        home: const HomeScreen(),
        onGenerateRoute: (settings) {
          if (settings.name == "/") {
            return MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            );
          } else if (settings.name == "details") {
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  DetailsScreen(
                itemID: settings.name as String,
              ),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                var begin = Offset(0.0, 1.0);
                var end = Offset.zero;
                var curve = Curves.easeInOut;

                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));
                var offsetAnimation = animation.drive(tween);


                return RotationTransition(
                  turns: animation,
                  child: child,
                  );
                // return FadeTransition(
                //   opacity: animation,
                //   child: child
                // );
                // return SlideTransition(
                //   position: offsetAnimation,
                //   child: child,
                // );
              },
            );
            // return MaterialPageRoute(
            // builder: (context) => DetailsScreen(itemID: settings.arguments as String),
            // );
          }
          return null;
        });
  }
}
