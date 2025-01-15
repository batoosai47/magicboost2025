import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Liste d'avatars disponibles
    final List<Map<String, String>> avatars = [
      {'name': 'Little Girl', 'image': 'assets/avatars/little_girl.png'},
      {'name': 'Little Boy', 'image': 'assets/avatars/little_boy.png'},
      {'name': 'Robot', 'image': 'assets/avatars/robot.png'},
      // Ajoute d'autres avatars ici
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Your Avatar'),
      ),
      body: Row(
        children: [
          // Partie gauche avec les icônes des avatars
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              padding: const EdgeInsets.all(16),
              itemCount: avatars.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Affiche l'image complète de l'avatar sélectionné à droite
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AvatarDetailPage(
                          name: avatars[index]['name']!,
                          image: avatars[index]['image']!,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Center(
                      child: Text(avatars[index]['name']!),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AvatarDetailPage extends StatelessWidget {
  final String name;
  final String image;

  const AvatarDetailPage({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Image.asset(image),
      ),
    );
  }
}
