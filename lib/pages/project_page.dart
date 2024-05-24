import 'package:flutter/material.dart';
import 'package:tp_navigation/widgets/%C2%AB%20drawer_widget.dart';

class AnimePage extends StatelessWidget {
  const AnimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: Text('Projects'),
      ),

      body: ListView(
        children: [
          Image.asset(
            'images/work2.png',
            width: 600,
            height: 240,
          ),
          Image.asset(
            'images/work3.png',
            width: 600,
            height: 240,
          ),
          Image.asset(
            'images/work4.png',
            width: 600,
            height: 240,
          ),


          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let's work together",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    // Ajoutez la logique pour appeler ou envoyer un e-mail
                  },
                  icon: Icon(Icons.call),
                  label: Text('Call: 24723273'),
                ),
                SizedBox(height: 8),
                ElevatedButton.icon(
                  onPressed: () {
                    // Ajoutez la logique pour envoyer un e-mail
                  },
                  icon: Icon(Icons.email),
                  label: Text('Email: Amine.Dhouibi@polytechnicien.tn'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  DrawerWidget() {}
}
