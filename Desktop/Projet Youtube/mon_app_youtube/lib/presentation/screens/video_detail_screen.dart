import 'package:flutter/material.dart';
import '../../data/models/video.dart';

class VideoDetailScreen extends StatelessWidget {
  final Video video;

  const VideoDetailScreen({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lecture de la vidéo')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Lecteur vidéo fictif
          Container(
            height: 220,
            width: double.infinity,
            color: Colors.black,
            child: Center(
              child: Text(
                video.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  video.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${video.views} • ${video.duration}',
                  style: TextStyle(color: Colors.grey[400], fontSize: 14),
                ),
                const Divider(height: 24, color: Colors.grey),
                Row(
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
                            video.channelName,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            '120 k abonnés',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'S\'abonner',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
