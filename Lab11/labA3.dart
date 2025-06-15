import 'package:flutter/material.dart';

class GridViewWithTextDemo extends StatelessWidget {
  const GridViewWithTextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> bgImages = [
      {
        "img": "https://images.pexels.com/photos/235986/pexels-photo-235986.jpeg?auto=compress&cs=tinysrgb",
        "text": "Nature - Mountains"
      },
      {
        "img": "https://images.unsplash.com/photo-1540206395-68808572332f",
        "text": "Abstract Gradient"
      },
      {
        "img": "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
        "text": "Cityscape - Skyline at night"
      },
      {
        "img": "https://images.pexels.com/photos/276092/pexels-photo-276092.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Minimalist - Clean gradient"
      },
      {
        "img": "https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3",
        "text": "Space - Galaxy"
      },
      {
        "img": "https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Ocean - Waves"
      },
      {
        "img": "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Forest - Nature"
      },
      {
        "img": "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Urban - Street"
      },
      {
        "img": "https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Texture - Wooden"
      },
      {
        "img": "https://images.unsplash.com/photo-1446776811953-b23d57bd21aa",
        "text": "Sunset - Serene beach"
      },
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Grid View with Text")),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: bgImages.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(bgImages[index]['img']!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  bgImages[index]['text']!,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}