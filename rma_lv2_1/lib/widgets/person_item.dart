import 'package:flutter/material.dart';

import '../data.dart';
import '../models/person.dart';
import '../screens/edit_person_screen.dart';

class PersonItem extends StatelessWidget {
  final Person person;
  final Function refreshInfos;

  PersonItem({
    @required this.person,
    @required this.refreshInfos,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Quote'),
                content: Text(person.quote),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('OK'),
                  )
                ],
              );
            });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 130,
              padding: EdgeInsets.only(bottom: 8.0),
              child: Image.network(
                person.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 8.0,
                    top: 8.0,
                  ),
                  child: Text(
                    person.name,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 8.0,
                    top: 8.0,
                    right: 8.0,
                  ),
                  child: Text(person.dateOfBirth),
                ),
                Container(
                  height: 68,
                  padding: EdgeInsets.only(
                    left: 8.0,
                    top: 8.0,
                    right: 8.0,
                  ),
                  child: Text(person.details),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      data.removeWhere((item) => item.id == person.id);
                      refreshInfos();
                    },
                  ),
                  Container(
                    height: 25,
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      Navigator.pushNamed(context, EditPersonScreen.routeName,
                              arguments: person)
                          .then(
                        (value) => refreshInfos(),
                      );
                    },
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
