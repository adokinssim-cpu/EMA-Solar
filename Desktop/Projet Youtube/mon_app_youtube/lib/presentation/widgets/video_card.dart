import 'package:flutter/material.dart';
import '../../data/models/video.dart';

class VideoCard extends StatelessWidget {
  final Video video;

  const VideoCard({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(video.thumbnailUrl),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.person, color: Colors.white),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      video.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${video.channelName} • ${video.views}',
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
