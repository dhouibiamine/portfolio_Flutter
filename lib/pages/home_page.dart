import 'package:flutter/material.dart';
import 'package:tp_navigation/widgets/%C2%AB%20drawer_widget.dart';

import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: Text("Accueil"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bonjour, je suis Amine Dhouibi, étudiant en Génie Logiciel à Polytechnique Sousse. Bienvenue sur mon portfolio !",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                "Je suis passionné par le développement d'applications mobiles et web, la conception UI/UX et l'exploration des dernières technologies. Explorez mon portfolio pour découvrir mes projets et compétences.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  _launchURL('https://github.com/dhouibiamine');
                },
                child: Text(
                  "Visitez mon profil GitHub",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _launchURL('https://www.linkedin.com/in/aminedhouibi/');
                },
                child: Text(
                  "Visitez mon profil LinkedIn",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to launch a URL
  void _launchURL(String url) async {
    bool launched = await launch(
      url,
      enableJavaScript: true,
    );

    if (!launched) {
      throw 'Could not launch $url';
    }
  }
}
