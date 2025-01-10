import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp(
    key: Key("abcde"),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cookie Man',
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: const Text("프로필 | Profile"),
        backgroundColor: Colors.green[300],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: const AssetImage("assets/profile.jpg"),
                radius: 60,
              ),
            ),
            const SizedBox(height: 10),
            const Divider(height: 30.0, color: Colors.white, thickness: 2.0),
            const Text(
              "Name",
              style: TextStyle(color: Colors.white, letterSpacing: 2.0),
            ),
            const SizedBox(height: 1.0),
            const Text(
              "철수",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "출생 년도",
              style: TextStyle(color: Colors.white, letterSpacing: 2.0),
            ),
            const SizedBox(height: 1.0),
            const Text(
              "2002",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Divider(height: 30.0, color: Colors.white, thickness: 2.0),
            const Text(
              "통신사",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('통신사: SKT'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.signal_cellular_alt,
                    color: Colors.white,
                    size: 30,
                  ),
                  const SizedBox(width: 8.0),
                  const Text(
                    'SKT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "휴대폰 번호",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 5.0),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                  msg: "휴대폰 번호: 010-1234-5678",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.black54,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              },

              child: Row(
                children: [
                  const Icon(
                    Icons.phone_iphone,
                    color: Colors.white,
                    size: 30,
                  ),
                  const SizedBox(width: 5.0),
                  const Text(
                    '010-1234-5678',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
