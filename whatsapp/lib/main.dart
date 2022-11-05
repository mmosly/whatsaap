import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Whatsapp(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class Whatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/person.jpg'),
              radius: 30,
            ),
            // color: Colors.white,
            const Text(
              ' person',
              style: TextStyle(fontSize: 25, letterSpacing: 5),
            ),
          ],
        ),
        leading:
            IconButton(onPressed: () => 0, icon: const Icon(Icons.arrow_back)),
        actions: const [
          Icon(Icons.video_call),
          Icon(Icons.phone),
          Icon(Icons.more_vert)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.mic),
      ),
      body: Stack(children: [
        Container(
            margin: const EdgeInsets.only(left: 100),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(50))),
        Container(
          decoration: const BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.fill,
              )),
        ),
        Container(
          margin: const EdgeInsets.only(left: 30, top: 35),
          alignment: AlignmentDirectional.topStart,
          child: const CircleAvatar(
            backgroundImage: AssetImage('images/person1.jpg'),
            radius: 40,
          ),
        ),
        Container(
          alignment: AlignmentDirectional.topCenter,
          padding: const EdgeInsetsDirectional.fromSTEB(120, 45, 20, 1),
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'this My First Massage',
              hintStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                wordSpacing: 5,
                letterSpacing: 3,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(60),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 150, left: 300),
          alignment: AlignmentDirectional.topStart,
          child: const CircleAvatar(
            backgroundImage: AssetImage('images/person2.jpg'),
            radius: 40,
          ),
        ),
        Container(
          alignment: AlignmentDirectional.topCenter,
          padding: const EdgeInsetsDirectional.fromSTEB(5, 160, 130, 2),
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'this My Secand Massage',
              hintStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                wordSpacing: 5,
                letterSpacing: 3,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(60),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 700),
          width: 300,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(50)),
          alignment: AlignmentDirectional.bottomCenter,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Type Amassge",
              hintStyle: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(60),
              ),
              suffixIcon: const Icon(
                Icons.attach_file,
                color: (Colors.white),
              ),
              prefixIcon: const Icon(
                Icons.emoji_emotions,
                color: (Colors.white),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
