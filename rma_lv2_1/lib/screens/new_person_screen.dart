import 'package:flutter/material.dart';
import '../data.dart';
import '../models/person.dart';

// ignore: must_be_immutable
class NewPersonScreen extends StatelessWidget {
  static const routeName = '/newPerson';
  String name = '';
  String dateOfBirth = '';
  String details = '';
  String url = '';
  String quote = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Add new person'),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Name",
              labelText: "Enter Name:",
              labelStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            onChanged: (value) => name = value,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Url",
              labelText: "Enter image URL:",
              labelStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            onChanged: (value) => url = value,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Date",
              labelText: "Enter year of birth:",
              labelStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            onChanged: (value) => dateOfBirth = value,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Details",
              labelText: "Enter person details:",
              labelStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            onChanged: (value) => details = value,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Quote",
              labelText: "Enter persons quote:",
              labelStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            onChanged: (value) => quote = value,
          ),
        ),
        Center(
          child: ElevatedButton(
            child: Text('Save'),
            onPressed: () {
              if (name != '' &&
                  dateOfBirth != '' &&
                  details != '' &&
                  url != '' &&
                  quote != '') {
                data.add(
                  Person(
                    name: name,
                    dateOfBirth: dateOfBirth,
                    details: details,
                    imageUrl: url,
                    quote: quote,
                  ),
                );
                Navigator.pop(context);
              }
            },
          ),
        )
      ]),
    );
  }
}
