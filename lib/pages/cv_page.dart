import 'package:flutter/material.dart';

import '../widgets/« drawer_widget.dart';
class CvPage extends StatelessWidget {
  const CvPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text("Mon CV"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/PRR.jpg'),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Amine Dhouibi',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Software Engineer',
              style: TextStyle(
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Développeur Web',
              style: TextStyle(
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 20.0),
            _buildSectionHeader(context, 'Éducation'),
            const SizedBox(height: 10.0),

            Text(
              "Cycle D'ingénieur En Génie Logiciel-Ecole Polytechnique de Sousse (2022-Présent)",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Text(
                  "Licence En Sciences Informatique-Institut Supérieur d'Informatique et de Gestion (2017-2021)",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Text(
              "Baccalauréat En Sciences Informatique-Lycée secondaire jeune fille(2013-2017)",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 20.0),
            _buildSectionHeader(context, 'Certifications'),
            const SizedBox(height: 10.0),
            Text(
              "Cisco Networking Academy- introduction to cyber secuirty",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Text(
              "Cisco Networking Academy- La Certification Cisco CCNA-1",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Text(
              "GoMyCode- Bootcamp JavaScript Full Stack",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),

            const SizedBox(height: 20.0),
            _buildSectionHeader(context, 'Compétences'),
            const SizedBox(height: 10.0),
            Text(
              'React & Node',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Text(
              'Java',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Text(
              'Flutter, Dart',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            // Ajoutez d'autres sections ou informations pertinentes ici
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.school, // Vous pouvez changer cette icône en fonction de la section
          size: 30.0,
          color: Theme.of(context).primaryColor,
        ),
        const SizedBox(width: 10.0),
        Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
