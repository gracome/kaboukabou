import 'package:flutter/material.dart';

void showCustomSnackbar(BuildContext context, String message) {
  // Affichage de l'overlay noir semi-transparent
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Stack(
        children: [
          Container(
            color: Colors.black.withOpacity(0.5),
          ),

            Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/party.png', // Chemin de votre image
              fit: BoxFit.cover,
              height: 150, // Hauteur de l'image
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height / 2 -
                50, // Centrage vertical
            left: MediaQuery.of(context).size.width / 2 -
                100, // Centrage horizontal
            child: Container(
            
              child: Row(children: [
                Image.asset('assets/images/done.png'),
                const SizedBox(width: 10),
                Text(
                  message,
                  style: TextStyle(fontSize: 28, fontFamily: 'Riffic', fontWeight: FontWeight.bold, color: Colors.white, decoration: TextDecoration.none,),
                ),
              ]),
            ),
          ),
        ],
      );
    },
  );
}
