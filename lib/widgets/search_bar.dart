import 'package:flutter/material.dart';

class SearchBars extends StatelessWidget {
  const SearchBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.95,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 51, 50, 50),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Text("Search", style: TextStyle(fontWeight: FontWeight(600))),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
