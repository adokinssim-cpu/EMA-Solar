import 'models/video.dart';

class MockData {
  static final List<Video> sampleVideos = [
    Video(
      id: '1',
      title: 'Devenir Développeur Full Stack avec 10 000 Codeurs - Le Guide',
      channelName: '10 000 Codeurs',
      views: '45 k vues',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1531482615713-2afd69097998',
      duration: '15:30',
    ),
    Video(
      id: '2',
      title: 'Maîtriser Flutter et Dart en 2026 : Architecture propre',
      channelName: 'Flutter Dev FR',
      views: '128 k vues',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1517694712202-14dd9538aa97',
      duration: '22:10',
    ),
    Video(
      id: '3',
      title: 'Créer une application mobile en équipe : Marc, Adama & Nelson',
      channelName: 'Tech Innovators',
      views: '12 k vues',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1522071820081-009f0129c71c',
      duration: '08:45',
    ),
  ];
}
