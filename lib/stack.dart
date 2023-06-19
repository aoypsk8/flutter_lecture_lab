import 'package:flutter/material.dart';
import 'package:new_1/card.dart';
import 'package:new_1/detail.dart';
import 'package:new_1/model.dart';

class Stack_Dart extends StatefulWidget {
  const Stack_Dart({Key? key}) : super(key: key);

  @override
  State<Stack_Dart> createState() => _Stack_DartState();
}

// ignore: camel_case_types
class _Stack_DartState extends State<Stack_Dart> {
  List<dynamic> booklist = [
    {
      'title': 'C Programming: (For JNTU, Kakinada)',
      'img':
          'https://th.bing.com/th/id/OIP.WEh-huEEvBRopdZAEPQDmQHaKc?pid=ImgDet&rs=1',
      'year': 2015,
    },
    {
      'title': 'C Programming: (For JNTU, Kakinada)',
      'img':
          'https://th.bing.com/th/id/OIP.WvGkGaFf6lwYJ03YZi7UywAAAA?pid=ImgDet&rs=1',
      'year': 2017,
    },
    {
      'title':
          'Core Java for Beginners: A Simplified Approach (Covers Java SE 13)',
      'img':
          'https://th.bing.com/th/id/OIP.rM8wR0w4vqVnpeUXp8uRzgHaJd?pid=ImgDet&rs=1',
      'year': 2019,
    },
    {
      'title': 'The Python Book: The Ultimate Guide to Coding with Python',
      'img':
          'https://th.bing.com/th/id/OIP.1AJSRkONXap-dJLVSC0YYgAAAA?pid=ImgDet&rs=1',
      'year': 2018,
    },
    {
      'title':
          'R in the graphical capabilities of R for exploring, managing, and solving data visualization challenges.',
      'img':
          'https://th.bing.com/th/id/OIP.ud-8klePKT2G6NUe98bt5QHaKG?pid=ImgDet&rs=1',
      'year': 2017,
    },
    {
      'title': 'C# Programming.A Step-by-Step Guide for Absolute Beginners',
      'img':
          'https://th.bing.com/th/id/OIP.5q70tq-vyy0E0ZyP-NVl2QAAAA?pid=ImgDet&rs=1',
      'year': 2000,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: booklist.length,
        itemBuilder: (context, index) => CardBook(
              fmodel: bookModel(booklist[index]['title'],
                  booklist[index]['img'], booklist[index]['year']),
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    fmodel: bookModel(booklist[index]['title'],
                        booklist[index]['img'], booklist[index]['year']),
                  ),
                ),
              ),
            ));
  }
}
