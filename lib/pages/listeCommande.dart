import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widgets/BestFoodWidget.dart';
import 'package:flutter/material.dart';

class listeCommande extends StatefulWidget {
  const listeCommande({Key? key}) : super(key: key);

  @override
  State<listeCommande> createState() => _listeCommandeState();
}

class _listeCommandeState extends State<listeCommande> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Text(
          'vos commandes',
          style: TextStyle(
              color: Color.fromARGB(255, 128, 135, 140), fontSize: 50),
        ),
        BestFoodTiles(
            name: "Fried Egg",
            imageUrl: "ic_best_food_8",
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            slug: "fried_egg"),
        // Text(
        //   'Etat : En cours d_expedition',
        //   style: TextStyle(
        //       color: Color.fromARGB(255, 201, 156, 156), fontSize: 25),
        // ),
        _buildButtonColumn(Colors.pink, Icons.cached_outlined, "annuler commande"),
         _buildButtonColumn(Colors.pink, Icons.cached_outlined, "annuler commande"),

        BestFoodTiles(
            name: "Potato with meat fry",
            imageUrl: "ic_best_food_3",
            rating: "4.2",
            numberOfRating: "70",
            price: "23.0",
            slug: ""),
        _buildButtonColumn(Colors.pink, Icons.share, "Déja livré"),

        BestFoodTiles(
            name: "Fried Egg",
            imageUrl: "ic_best_food_4",
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            slug: "fried_egg"),
        _buildButtonColumn(Colors.pink, Icons.share, "En cours d'expédition"),

        BestFoodTiles(
            name: "Red meat with salad",
            imageUrl: "ic_best_food_5",
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: ""),
        _buildButtonColumn(Colors.pink, Icons.share, "En cours d'expédition"),

        BestFoodTiles(
            name: "Red meat with salad",
            imageUrl: "ic_best_food_6",
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: ""),
        _buildButtonColumn(Colors.pink, Icons.share, "En cours d'expédition"),

        BestFoodTiles(
            name: "Red meat with salad",
            imageUrl: "ic_best_food_7",
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: ""),
        _buildButtonColumn(Colors.pink, Icons.share, "En cours d'expédition"),
      ],
    ));
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Icon(icon, color: color)),
        Text(
          label,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: color),
        )
      ],
    );
  }
}
