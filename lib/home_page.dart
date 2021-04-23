import 'package:flutter/material.dart';

import 'book.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Book> books = [
    Book('The alchemist', 'Paulo Coelho', 'assets/alchemist.jfif'),
    Book('Aleph', 'Paulo Coelho', 'assets/aleph.jfif'),
    Book('Brida', 'Paulo Coelho', 'assets/brida.jfif'),
    Book('Veronika', 'Paulo Coelho', 'assets/veronika.jfif')
  ];
  double _currentPage = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: books.length,
            itemBuilder: (context, index) {
              final result = _currentPage - index + 1;
              final value = 4 * result + 1;

              return Padding(
                  padding:
                      EdgeInsets.only(left: 23, right: 10, top: 10, bottom: 20),
                  child: Material(
                      elevation: 0.0,
                      shadowColor: Color(0xFF797A82),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
                      child: InkWell(
                          highlightColor: Colors.white,
                          child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 5.0,
                              runSpacing: 10.0,
                              children: [
                                Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Container(
                                        height: 500,
                                        width: 300,
                                        child: Image.asset(
                                          books[index].cover,
                                          width: 100,
                                          height: 100,
                                        )))
                              ]))));
            })
      ],
    ));
  }
}
