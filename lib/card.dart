import 'package:flutter/material.dart';
import 'package:new_1/model.dart';

class CardBook extends StatefulWidget {
  final bookModel fmodel;
  final VoidCallback press;
  const CardBook(
      {Key? key,
      required this.press, required this.fmodel})
      : super(key: key);

  @override
  State<CardBook> createState() => _CardBookState();
}

class _CardBookState extends State<CardBook> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      child: Card(
        elevation: 5,
        child: Container(
          height: 140,
          color: Color.fromARGB(130, 0, 123, 255),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      child: Image.network(
                        widget.fmodel.imgUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(widget.fmodel.bookName,
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 0, 0))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(widget.fmodel.year.toString(),
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 0, 0))),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
