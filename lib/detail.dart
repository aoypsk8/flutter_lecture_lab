import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_1/model.dart';

class DetailScreen extends StatefulWidget {
  final bookModel fmodel;

  const DetailScreen({
    Key? key,
    required this.fmodel,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(127, 0, 255, 13),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: ClipRRect(
                    child: Image.network(
                  "${widget.fmodel.imgUrl}",
                  height: 450.0,
                  fit: BoxFit.contain,
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 0),
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    "${widget.fmodel.bookName}",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    "Year ${widget.fmodel.year}".toString(),
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

// import 'package:flutter/material.dart';

// class DetailsScreen extends StatelessWidget {
//   final String title;
//   final String img;
//   final int year;
//   final int indexx;
//   const DetailsScreen(
//       {Key? key,
//       required this.title,
//       required this.img,
//       required this.year,
//       required this.indexx})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     var widget;
//     return Scaffold(
//         appBar: AppBar(),
//         body: Center(
//           child: Text(widget.title),
//         ));
//   }
// }
