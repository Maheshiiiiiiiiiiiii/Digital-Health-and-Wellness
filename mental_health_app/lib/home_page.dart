import 'package:flutter/material.dart';
import 'package:mental_health_app/widgets/HomeCard.dart';
import 'package:mental_health_app/utils/constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: HomePage(),
      )

    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Mental Health App"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        color: primaryColor,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeCard(topic: "Find Yourself", imagePath: "assets/yourself.jpg"),
                HomeCard(topic: "Medidate", imagePath: "assets/meditate.jpg"),
                HomeCard(topic: "Practise Breathing", imagePath: "assets/breath.jpg"),
                HomeCard(topic: "Online Companian", imagePath: "assets/chatbot.jpg"),
                HomeCard(topic: "Find Therapy", imagePath: "assets/therapy.jpg"),
                HomeCard(topic: "Connect with Others", imagePath: "assets/community.jpg"),
              ],


            ),
          )
        ),
      ),
    );
  }
}

