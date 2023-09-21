import 'package:flutter/material.dart';

class LikedProfileGrid extends StatelessWidget {
  const LikedProfileGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 20, // Spacing between columns
            mainAxisSpacing: 10, // Spacing between rows
            childAspectRatio: 300 / 400,
          ),
          itemCount: 10, // Number of items in the grid

          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {},
              child: Card(
                elevation: 5,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.red,
                          child: Image.asset(
                            'assets/images/profile.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 35,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 35,
                        color: Colors.black.withOpacity(0.4),
                        child: TextButton(
                          child: const Text(
                            'Dislike ',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 35,
                        color: Colors.black.withOpacity(0.5),
                        child: TextButton(
                          child: const Text(
                            'Block User',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
