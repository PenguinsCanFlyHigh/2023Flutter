import 'package:flutter/material.dart';

class HeroTest extends StatefulWidget {
  const HeroTest({super.key});

  @override
  State<HeroTest> createState() => _HeroTestState();
}

class _HeroTestState extends State<HeroTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero",
          style: TextStyle(
            color: Colors.amber
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: GestureDetector(
        onTap: (){
         Navigator.push(
             context,
             MaterialPageRoute(
                 builder: (context){
                   return HeroDetailPage();
                 }
             ),
         );
        },
      child: Hero(
        tag: "Image",
        child: Image.asset(
            'assets/karina.jpg',
          height: 100,
          width: 100,
        ),
      ),
      ),
    );
  }
}


class HeroDetailPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Detail"),
      ),
      body: Hero(
        tag: "Image",
        child: Image.asset('assets/karina.jpg'),
      ),
    );
  }
}