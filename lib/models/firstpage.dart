import 'package:app/models/secondpage.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueAccent),
        body: Container(
          margin: EdgeInsets.all(100),
          color: Colors.black,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Options"),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Increase"),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Text("$count"),
                  ),
                ],
              ),
              Text("SecondPage Sent Count: $count"),
              ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Secondpage(mail: "Hello! Secondpage", count: count),
                    ),
                  );
                  if (result != null) {
                    setState(() {
                      count = result;
                    });
                  }
                },
                child: Text("Go To Secondpage"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
