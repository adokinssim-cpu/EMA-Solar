import 'package:flutter/material.dart';
import '../../data/mock_data.dart';
import '../../data/models/video.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Video> videos = MockData.sampleVideos;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'YouTube 10k',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        ),
        actions: [
          // Bouton Cast cliquable
          IconButton(
            icon: const Icon(Icons.cast),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Recherche d\'appareils connectés...'),
                ),
              );
            },
          ),
          // Bouton Notifications cliquable
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Colors.grey[900],
                  title: const Text(
                    'Notifications',
                    style: TextStyle(color: Colors.white),
                  ),
                  content: const Text(
                    'Aucune nouvelle notification pour l\'équipe.',
                    style: TextStyle(color: Colors.grey),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'Fermer',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          // Bouton Recherche cliquable
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Ouverture de la recherche...')),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.grey[900],
                child: Center(
                  child: Text(
                    video.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            video.title,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${video.channelName} • ${video.views}',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_vert, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.grey, height: 1),
            ],
          );
        },
      ),
    );
  }
}
