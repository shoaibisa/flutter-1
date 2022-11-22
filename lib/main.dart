import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MahiCard(),
  )
);
class MahiCard extends StatefulWidget {

  @override
  State<MahiCard> createState() => _MahiCardState();
}

class _MahiCardState extends State<MahiCard> {
  int currLevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Mahi Portfolio',
          style: TextStyle(
            color: Colors.amber,
            fontFamily: 'IndieFlower'
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            currLevel+=1;
          });
        },
        child:Icon(
          Icons.add,
          color: Colors.amber,
        ),
        backgroundColor: Colors.grey,

      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/mahi.jpeg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 50,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'MAHI AKHTAR',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 27.0,
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$currLevel',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey,
                ),
                SizedBox(width: 10,),
                Text(
                  'mahi@gmail.com',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              ],
            ) ,
            Row(
              children: <Widget>[
                Icon(
                  Icons.open_in_browser,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                  'www.shoaibisa.tech',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

