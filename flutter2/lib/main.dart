import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              TitleSection(
                name: 'El Panecillo',
                location: 'Quito, Ecuador',
              ),
              ImageSection(
                image: 'images/el_panecillo.jpg',
              ),
              ButtonSection(),
              TextSection(
                description: 'El Panecillo es una colina natural ubicada en el centro de Quito, famosa por su vista panorámica de la ciudad y la estatua de la Virgen de Quito.',
              ),
              TitleSection(
                name: 'La Ronda',
                location: 'Quito, Ecuador',
              ),
              ImageSection(
                image: 'images/la_ronda.jpg',
              ),
              ButtonSection(),
              TextSection(
                description: 'La Ronda es una calle histórica en el centro de Quito, conocida por su arquitectura colonial y su vibrante vida nocturna.',
              ),
              TitleSection(
                name: 'Mitad del Mundo',
                location: 'Quito, Ecuador',
              ),
              ImageSection(
                image: 'images/la_mitad_del_mundo.jpg',
              ),
              ButtonSection(),
              TextSection(
                description: 'El monumento de la Mitad del Mundo marca el lugar donde se cree que pasa la línea ecuatorial. Es un popular destino turístico con museos y actividades educativas.',
              ),
              TitleSection(
                name: 'Cotopaxi',
                location: 'Latacunga, Ecuador',
              ),
              ImageSection(
                image: 'images/el_cotopaxi.jpg',
              ),
              ButtonSection(),
              TextSection(
                description: 'El Cotopaxi es un volcán activo en los Andes, conocido por su cono simétrico y su glaciar. Es una atracción popular para excursionistas y montañistas.',
              ),
              TitleSection(
                name: 'Baños',
                location: 'Baños de Agua Santa, Ecuador',
              ),
              ImageSection(
                image: 'images/banos.jpg',
              ),
              ButtonSection(),
              TextSection(
                description: 'Baños de Agua Santa es una ciudad conocida por sus aguas termales, cascadas y deportes de aventura como el puenting y el rafting.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
