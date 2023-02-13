import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lab13/cat.dart';
import 'package:lab13/screen3.dart';
import 'package:lab13/screen_new.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    print("hello");
    var top = 0.0;
    var left = 0.0;
    return Scaffold(
        body: Stack(children: [
      Container(
        color: Colors.deepPurpleAccent,
      ),
      Container(
        margin: EdgeInsets.only(top: 50),
        child: Row(
          children: [
            Container(
                child: Image.network(
                    'https://lh6.googleusercontent.com/TEe5jUF-pT3sZlrQoLZrWNm6OgZcz-IonKiPJ5nUlzgLLjvKf3E_zARBd3zaFHgMTyM=w2400')),
            Container(
              margin: EdgeInsets.only(left: 320),
              child: Icon(Icons.notifications_sharp,
                  color: Colors.white, size: 30.0),
            )
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 120),
        child: Text(
          "Hi User ",
          style: TextStyle(
            fontSize: 45,
            color: Colors.white,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 180),
        child: Text(
          "Welcome back ",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 250),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
              spreadRadius: 1.0,
              offset: Offset(0.0, 2.0),
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 320),
        color: Colors.white,
      ),
      Container(
        margin: EdgeInsets.only(top: 326),
        child: Row(
          children: [
            Expanded(
                child: Text(
              "Categories",
              style: TextStyle(fontSize: 20),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(left: 170),
              child: Icon(Icons.delete),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(left: 120),
              child: Icon(Icons.edit_calendar),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(left: 70),
              child: Icon(Icons.sort),
            ))
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 350),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen3()));
              print("clicking");
            },
            child: Text("Click me")),
      ),
      Container(
        margin: const EdgeInsets.only(top: 450),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RectangleAvatarList()));
              print("clicking");
            },
            child: Text("Click me")),
      ),
      Container(
          margin: EdgeInsets.only(top: 490),
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
              4,
              (index) {
                return Container(
                  child: Spinner(),
                );
              },
            ),
          )),
    ]));
  }

  Widget Spinner() {
    print("hellio");
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Color(0xff5af4a5),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://via.placeholder.com/100x100'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Avatar Text',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
