import 'package:app/models/Day4input.dart';
import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key, required this.mail, required this.count});

  final String mail;
  final int count;

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(100),
          color: Colors.black,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(mail),
              Text("$count"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, count + 1);
                },
                child: Text("Go To Firstpage"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Day4input()),
                  );
                },
                child: Text("Go to Day 4- Input"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
