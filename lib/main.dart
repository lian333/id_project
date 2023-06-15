import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:LianCard()
  ));
}

class LianCard extends StatefulWidget {
  const LianCard({super.key});

  @override
  State<LianCard> createState() => _LianCardState();
}

class _LianCardState extends State<LianCard> {

  int lianlevel = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('lian ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            lianlevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),



      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/foto.jpg'),
                radius: 40.0,

              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Lianliu',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),

            Text(
              'Current lian level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$lianlevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'lianliu@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            )
          ],
        ),
      ) ,
    );
  }
}
