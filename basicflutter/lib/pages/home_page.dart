import 'package:flutter/material.dart';

import '../class/item_class.dart';
import '../widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Mapp'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.dangerous)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
                box:
                    ItemClass(title: 'Rocket', imagePath: 'images/rocket.png')),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                      box: ItemClass(
                          title: 'Travel', imagePath: 'images/travel.png')),
                ),
                Expanded(
                  child: CardWidget(
                      box: ItemClass(
                          title: 'Space', imagePath: 'images/space.png')),
                ),
              ],
            ),
            CardWidget(
                box: ItemClass(title: 'yeah', imagePath: 'images/yeah.png')),
          ],
        ),
      ),
    );
  }
}
