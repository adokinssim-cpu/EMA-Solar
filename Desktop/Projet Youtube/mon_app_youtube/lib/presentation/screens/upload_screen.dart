import 'package:flutter/material.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mettre en ligne une vidéo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Icon(Icons.video_library, size: 60, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Titre de la vidéo',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Description',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Vidéo mise en ligne avec succès !'),
                  ),
                );
              },
              child: const Text(
                'Publier la vidéo',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
