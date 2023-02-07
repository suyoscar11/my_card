import 'package:flutter/material.dart';

class Homepages extends StatelessWidget {
  const Homepages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.withOpacity(0.2),
      appBar: AppBar(
        title: Text('My Card'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.transparent,
              child: Image(
                image: AssetImage('assets/images/ball2.png'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Suyog Gaire',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 20,
            ),
            OOPS(
              textt: '+977-9749326717',
              iconn: Icons.phone,
            ),
            SizedBox(
              height: 10,
            ),
            OOPS(iconn: Icons.mail, textt: 'suyoscar11@gmail.com')
          ],
        ),
      ),
    );
  }
}

class OOPS extends StatelessWidget {
  String textt;
  IconData iconn;

  OOPS({required this.iconn, required this.textt});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(children: [
          SizedBox(
            width: 5,
          ),
          Icon(
            iconn,
            color: Colors.teal,
            size: 25,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            textt,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
