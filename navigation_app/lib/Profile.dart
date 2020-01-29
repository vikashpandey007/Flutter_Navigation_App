import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: Stack(
          children: <Widget>[
            ClipPath(
              child: Container(
                height: 450,
                width: double.infinity,
                color: Colors.white,
              ),
              clipper: clip(),
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 200,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage("assets/vikash2.jpg"),
                  ),
                ),
                Text(
                  "Vikash Pandey",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Programmer",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "50",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Projects",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "10k",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "55",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Repository",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                MaterialButton(
                    color: Colors.blue,
                    height: 50,
                    minWidth: 200,
                    splashColor: Colors.green,
                    child: Text(
                      "Follow",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class clip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, 100);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return null;
  }
}