import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B202D),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Messages",
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit, color: Colors.white, size: 30),
                ),
              ],
            ),
            SizedBox(height: 18),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 10),
                  OnlineUser("images/chat2.png", "Leela"),
                  SizedBox(width: 18),
                  OnlineUser("images/chat3.png", "Alan"),
                  SizedBox(width: 18),
                  OnlineUser("images/chat4.png", "Dary"),
                  SizedBox(width: 18),
                  OnlineUser("images/chat5.png", "Queen"),
                  SizedBox(width: 18),
                  OnlineUser("images/chat6.png", "Beatiful"),
                  SizedBox(width: 18),
                  OnlineUser("images/chat7.png", "Toney"),
                  SizedBox(width: 18),
                  OnlineUser("images/chat8.png", "Emma"),
                  SizedBox(width: 18),
                  OnlineUser("images/chat9.png", "Ram"),
                  SizedBox(width: 18),
                  OnlineUser("images/chat10.png", "Dany"),
                  SizedBox(width: 18),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column OnlineUser(image, text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(radius: 30, backgroundImage: Image.asset(image).image),
        SizedBox(height: 8),
        Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
      ],
    );
  }
}
