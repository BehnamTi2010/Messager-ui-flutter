import 'package:flutter/material.dart';
import 'widgets/story_part.dart';
import 'widgets/search_bar.dart';
import 'widgets/home_items.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Messages"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.add,color: const Color.fromARGB(255, 255, 255, 255),)
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          StoryPart(),
          SizedBox(height: 24,),
          SearchBars(),
          SizedBox(height: 24,),
          HomeItems()
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 0, 0, 0),
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ButtonStyle(backgroundColor:WidgetStateColor.transparent,),
              onPressed: (){},
              child: Column(children: [
                Icon(Icons.people,color: Colors.white,),
                SizedBox(height: 2,),
                Text("Calls",style: TextStyle(color: Colors.white),)
              ],),
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor:WidgetStateColor.transparent),
              onPressed: (){},
              child: Column(children: [
                Icon(Icons.call,color: Colors.white,),
                SizedBox(height: 2,),
                Text("Calls",style: TextStyle(color: Colors.white),)
              ],),
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor:WidgetStateColor.transparent),
              onPressed: (){},
              child: Column(children: [
                Icon(Icons.chat,color: Colors.white,),
                SizedBox(height: 2,),
                Text("Calls",style: TextStyle(color: Colors.white),)
              ],),
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor:WidgetStateColor.transparent),
              onPressed: (){},
              child: Column(children: [
                Icon(Icons.settings,color: Colors.white,),
                SizedBox(height: 2,),
                Text("Calls",style: TextStyle(color: Colors.white),)
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
