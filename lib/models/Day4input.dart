import 'package:app/models/Day4_Part2_Form_Validation.dart';
import 'package:flutter/material.dart';

class Day4input extends StatefulWidget {
  @override
  State<Day4input> createState() => _Day4inputState();
}

class _Day4inputState extends State<Day4input> {
  String name = '';
  final TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Day 4- Input", textAlign: TextAlign.center),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // onChange: real time
              TextField(
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              Text("Name: "),
              Text(name, style: TextStyle(fontSize: 20, fontWeight: .bold)),

              SizedBox(height: 20),
              // On press update,
              TextField(controller: nameController), // First write Your name
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    // When press it updated
                    onPressed: () {
                      setState(() {
                        name = nameController.text;
                      });
                    },
                    child: Text("Save"),
                  ),
                ],
              ),
              Text(name, style: TextStyle(fontSize: 20, fontWeight: .bold)),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Day4Part2FormValidation(),
                    ),
                  );
                },
                child: Text("Go to Day 4- Part 2, Form & Validation"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
