import 'package:flutter/material.dart';
import 'package:rma_lv2_1/screens/new_person_screen.dart';
import 'package:rma_lv2_1/widgets/person_item.dart';
import '../data.dart';


class PeopleScreen extends StatefulWidget {
  @override
  _PeopleScreenState createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  refreshInfos(){
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inspiring People'),
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(NewPersonScreen.routeName)
                      .then((value) => setState(() {}));
                }),
          ],
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return PersonItem(
              person: data[index],
              refreshInfos: refreshInfos,
            );
          },
          itemCount: data.length,
        ),
      );
  }
}
