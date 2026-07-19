import 'package:flutter/material.dart';

class HomeItems extends StatelessWidget {
  const HomeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Card(
            image: AssetImage("assets/images/2.jpg"),
            name: 'Miah',
            discription: 'Hello! How are you?',
          ),
          Divider(height: 16, color: const Color.fromARGB(255, 44, 45, 45)),
          Card(
            image: AssetImage("assets/images/3.jpg"),
            name: 'Rabert',
            discription: 'Typing...',
          ),
          Divider(height: 16, color: const Color.fromARGB(255, 44, 45, 45)),
          Card(
            image: AssetImage("assets/images/4.jpg"),
            name: 'Jacson Hin',
            discription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
          ),
          Divider(height: 16, color: const Color.fromARGB(255, 44, 45, 45)),
          Card(
            image: AssetImage("assets/images/5.jpg"),
            name: 'Behnam Taheri',
            discription: 'Nooo. Very bad!',
          ),
          Divider(height: 16, color: const Color.fromARGB(255, 44, 45, 45)),
          Card(
            image: AssetImage("assets/images/6.jpg"),
            name: 'Milad sadi',
            discription: ' amet, consectetur adipiscing elit, sed do eiusmod ',
          ),
          Divider(height: 16, color: const Color.fromARGB(255, 44, 45, 45)),
          Card(
            image: AssetImage("assets/images/1.jpg"),
            name: 'Kiarash Robati',
            discription: 'elit, sed do eiusmod tempor incididunt ut',
          ),
          Divider(height: 16, color: const Color.fromARGB(255, 44, 45, 45)),
          Card(
            image: AssetImage("assets/images/2.jpg"),
            name: 'Mia Khane',
            discription: 'Nooo. Very bad!',
          ),
          Divider(height: 16, color: const Color.fromARGB(255, 44, 45, 45)),
          Card(
            image: AssetImage("assets/images/4.jpg"),
            name: 'Deived',
            discription: 'Hello! How are you?',
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Card extends StatelessWidget {
  ImageProvider image;
  String name;
  String discription;

  Card({
    super.key,
    required this.image,
    required this.name,
    required this.discription,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 30, backgroundImage: image),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight(600),
              ),
            ),
            SizedBox(
              width: 220,
              child: Text(
                discription,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight(200),
                  color: const Color.fromARGB(255, 143, 143, 143),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
