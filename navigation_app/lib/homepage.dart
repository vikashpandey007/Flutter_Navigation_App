import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:navigation_app/Profile.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
    void changeBrightness() {
    DynamicTheme.of(context).setBrightness(Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark);
  }
  var btn1 = false;
  var btn2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.transparent,
      ),
      // backgroundColor: Colors.transparent,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Vikash pandey"),
              accountEmail: Text("Vikashpandey0018@gamil.com"),
              currentAccountPicture: CircleAvatar(
                 backgroundImage: AssetImage("assets/vikash2.jpg"),
                radius: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Favorite Apps",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 1,
              width: 340,
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('Camera'),
              onTap: () {
                // Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('profile'),
              onTap: () {
                     Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "Settings",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 170),
              height: 1,
              width: 340,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Dark Mode"),
              trailing: Switch(
                value: btn1,
                onChanged: (bool value) {
                 changeBrightness()  ;
                  setState(() {
                    btn1 = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Nav Bar"),
              trailing: Switch(
                value: btn2,
                onChanged: (bool value) {
                  
                  setState(() {
                    btn2 = value;
                  });
                },
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Image(
                  height: 450,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/sea1.jpeg"),
                ),
              ),
              // SizedBox(height: 300,),
              Padding(
                padding: const EdgeInsets.only(top: 412, left: 40),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      border: Border.all(width: 1)),
                  height: 65,
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images3.jpeg"),
                          radius: 40,
                          backgroundColor: Colors.yellow,
                        ),
                        Text(
                          "it's now 4 dgree celcious",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images1.png"),
                          radius: 40,
                          child: Icon(
                            Icons.arrow_forward,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(12),
          ),
          Container(
            margin: EdgeInsets.only(left: 50),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.red[50],
                  radius: 30,
                  child: Icon(
                    Icons.calendar_today,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                ),
                CircleAvatar(
                  // foregroundColor: Colors.black,
                  backgroundColor: Colors.red[50],
                  radius: 30,
                  child: Icon(
                    Icons.book,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                ),
                CircleAvatar(
                  // foregroundColor: Colors.black,
                  backgroundColor: Colors.red[50],
                  radius: 30,
                  child: Icon(
                    Icons.music_note,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                ),
                CircleAvatar(
                  // foregroundColor: Colors.black,
                  backgroundColor: Colors.red[50],
                  radius: 30,
                  child: Icon(
                    Icons.account_box,
                  ),
                )
              ],
            ),
            
          ),

          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Container(
              height: 40,
              width:300,
              // color: Colors.red,
              child: Text("Tuesday, Jan 30",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),), 
            ),
          ),
           Container(
            height: 100,
            width:300,
            // color: Colors.blueGrey,
            child: Text("The time is 11:30 AM,and you have 75% battery left . Today is high temprature is going to be 44 degree celcious with a low of 25 degree celcius.",style: TextStyle(fontWeight: FontWeight.bold),), 
          ),

          Padding(
            padding: const EdgeInsets.only(top: 40, left: 50),
            child: Row(
              children: <Widget>[
                MaterialButton(
                  height: 40,
                  minWidth: 40,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 8.0,
                  highlightColor: Colors.blue[200],
                  onPressed: () {},
                  child: Text("CALL",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                MaterialButton(
                  height: 40,
                  minWidth: 30,
                  color: Colors.red[50],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 8.0,
                  highlightColor: Colors.blue,
                  onPressed: () {},
                  child: Text("TEXT", style: TextStyle(fontSize: 18)),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                MaterialButton(
                  height: 40,
                  minWidth: 30,
                  color: Colors.red[50],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 8.0,
                  highlightColor: Colors.blue,
                  onPressed: () {},
                  child: Text("EMAIL", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
