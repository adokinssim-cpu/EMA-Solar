import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'shorts_screen.dart';
import 'upload_screen.dart';
import 'profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  // Liste de tes 4 vrais écrans (le bouton + au milieu ne pointe pas vers un écran direct)
  final List<Widget> _screens = [
    const HomeScreen(),
    const ShortsScreen(),
    const SubscriptionsScreen(), // Écran Abonnements (index 2 réel)
    const ProfileScreen(), // Écran Vous (index 3 réel)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex > 2 ? _currentIndex - 1 : _currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 2) {
            // Le bouton "+" central ouvre le menu contextuel
            showModalBottomSheet(
              context: context,
              backgroundColor: Colors.grey[900],
              builder: (context) => Container(
                padding: const EdgeInsets.all(20),
                height: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Créer',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Divider(color: Colors.grey),
                    ListTile(
                      leading: const Icon(Icons.create, color: Colors.red),
                      title: const Text(
                        'Mettre en ligne une vidéo',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UploadScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.video_call, color: Colors.red),
                      title: const Text(
                        'Créer un Short',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        setState(() {
                          _currentIndex = 1; // Redirige vers Shorts
                        });
                      },
                    ),
                  ],
                ),
              ),
            );
          } else {
            setState(() {
              // Convertit l'index de la barre (0, 1, 3, 4) vers l'index des écrans (0, 1, 2, 3)
              _currentIndex = index > 2 ? index - 1 : index;
            });
          }
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, size: 35, color: Colors.red),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: 'Abonnements',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Vous'),
        ],
      ),
    );
  }
}

// Petit écran temporaire pour les Abonnements si tu ne l'as pas encore créé
class SubscriptionsScreen extends StatelessWidget {
  const SubscriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Abonnements')),
      body: const Center(
        child: Text(
          'Vos abonnements ici',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
