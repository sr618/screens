import 'package:flutter/material.dart';

class RectangleAvatarList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: AppBar(
            backgroundColor: Color(0xff7b1fa2),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.notifications),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
            title: Text(
              'App Title',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Container(
color: Colors.grey[156],
                  margin: EdgeInsets.only( bottom: 25),
                  padding: EdgeInsets.only(left: 20, right: 20
                      ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      border: InputBorder.none,
                      hintText: 'Search...',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: ListView(
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(19),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ListTile(
                  leading: Container(
                    
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/250?image=9"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  title: Text("Item 1"),
                  subtitle: Text("Subtitle 1"),
                ),
              ),
    ]));
  }
}
