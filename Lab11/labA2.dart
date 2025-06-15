import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid_View extends StatelessWidget {
  const Grid_View({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> bgImages = [
      "https://www.atlasandboots.com/wp-content/uploads/2019/05/ama-dablam2-most-beautiful-mountains-in-the-world.jpg",
      // Nature - Mountains
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT58Qws6hhPC9d3kdvH5UfCVOOtpujuh5UYgA&s",
      // Abstract Gradient
      "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
      // Cityscape - Skyline at night
      "https://images.pexels.com/photos/276092/pexels-photo-276092.jpeg?auto=compress&cs=tinysrgb&w=600",
      // Minimalist - Clean gradient
      "https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3",
      // Space - Galaxy
      "https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=600",
      // Ocean - Waves
      "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg?auto=compress&cs=tinysrgb&w=600",
      // Forest - Nature
      "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&w=600",
      // Urban - Street
      "https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=600",
      // Texture - Wooden
      "https://images.unsplash.com/photo-1446776811953-b23d57bd21aa"
      // Sunset - Serene beach
    ];
    return Scaffold(
      body: GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (BuildContext context, int index) {
        return Container(height: 150,child: Image.network(bgImages[index],  fit: BoxFit.cover,),);
      },
      ),
    );
  }
}