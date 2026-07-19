import 'package:flutter/material.dart';

class StoryPart extends StatelessWidget {
  const StoryPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyCard(
          image: AssetImage("assets/images/1.jpg"),
          userName: "Your story",
        ),
        Card(image: AssetImage("assets/images/2.jpg"), userName: "Mike"),
        Card(image: AssetImage("assets/images/6.jpg"), userName: "Alex Monro"),
        Card(image: AssetImage("assets/images/4.jpg"), userName: "Maya Petal"),
        Card(image: AssetImage("assets/images/5.jpg"), userName: "Behnam T.."),
      ],
    );
  }
}

// ignore: must_be_immutable
class MyCard extends StatelessWidget {
  ImageProvider image;
  String userName;

  MyCard({super.key, required this.image, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(radius: 30, backgroundImage: image),
            Positioned(
              right: 1,
              bottom: 1,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(Icons.add, size: 12),
              ),
            ),
          ],
        ),
        SizedBox(height: 6),
        Text(
          userName,
          style: TextStyle(
            fontSize: 12,
            color: const Color.fromARGB(221, 247, 247, 247),
            fontWeight: FontWeight(700)
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Card extends StatelessWidget {
  ImageProvider image;
  String userName;

  Card({super.key, required this.image, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: 2, color: Colors.deepOrange),
          ),
          child: CircleAvatar(radius: 30, backgroundImage: image),
        ),
        SizedBox(height: 6),
        Text(
          userName,
          style: TextStyle(
            fontSize: 12,
            color: const Color.fromARGB(221, 247, 247, 247),
            fontWeight: FontWeight(700)
          ),
        ),
      ],
    );
  }
}
