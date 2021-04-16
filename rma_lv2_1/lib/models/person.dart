import 'package:flutter/cupertino.dart';

class Person{
  UniqueKey id = UniqueKey();
  String name;
  String dateOfBirth;
  String details;
  String imageUrl;
  String quote;

  Person({
    @required this.name, 
    @required this.dateOfBirth,
    @required this.details,
    @required this.imageUrl,
    @required this.quote,
  });

  
}

