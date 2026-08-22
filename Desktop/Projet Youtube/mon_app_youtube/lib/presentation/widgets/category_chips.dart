import 'package:flutter/material.dart';

class CategoryChips extends StatelessWidget {
  const CategoryChips({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      'Tous',
      'Gaming',
      'Musique',
      'Live',
      'Actualités',
      'Développement',
      'Flutter',
    ];

    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Chip(
              label: Text(categories[index]),
              backgroundColor: index == 0 ? Colors.black : Colors.grey[200],
              labelStyle: TextStyle(
                color: index == 0 ? Colors.white : Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }
}
