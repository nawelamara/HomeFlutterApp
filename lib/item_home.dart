import 'package:flutter/material.dart';

class ItemHome extends StatelessWidget {
  const ItemHome({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Card(
      elevation: 4,
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children :[
          ListTile(
            title: Text("500dt par Mois"),
            subtitle: Text("s+1, 58m"),
            trailing: Icon(Icons.favorite_outline),
          ),
Image.asset("assets/home1.jpg",height: h *0.25, width:w*0.8, fit: BoxFit.cover),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Situé à Sousse, à moins de 700 mètres du centre-ville.",
              textAlign: TextAlign.center,
            ),
          ),
Align(
alignment: AlignmentDirectional.centerEnd,
child: OverflowBar(
overflowAlignment: OverflowBarAlignment.end,
children: [
TextButton(onPressed: () => {}, child: Text("Vérifier la disponibilité")),
TextButton(onPressed: () => {}, child: Text("Contactez Nous")),
        ],
      ),
      ),
    
  
  ]
      )
      );
}
}
