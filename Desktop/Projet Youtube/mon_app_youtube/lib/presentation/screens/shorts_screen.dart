import 'package:flutter/material.dart';

class ShortsScreen extends StatelessWidget {
  const ShortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Container(
              color: Colors.grey[900],
              child: const Center(
                child: Text(
                  'Lecture Vidéo Short - 10 000 Codeurs',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
          Positioned(
            right: 16,
            bottom: 60,
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                const Text(
                  '12 k',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                const SizedBox(height: 20),
                IconButton(
                  icon: const Icon(
                    Icons.thumb_down,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                const Text(
                  'Je n\'aime',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                const SizedBox(height: 20),
                IconButton(
                  icon: const Icon(
                    Icons.comment,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                const Text(
                  '428',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                const SizedBox(height: 20),
                IconButton(
                  icon: const Icon(Icons.share, color: Colors.white, size: 30),
                  onPressed: () {},
                ),
                const Text(
                  'Partager',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
          const Positioned(
            left: 16,
            bottom: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '@EquipeFlutter',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Session de code Flutter en direct ! #shorts',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
