import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project/boxes.dart';
import 'package:project/boxes1.dart';
import 'package:project/varible.dart';
import 'package:http/http.dart' as http;

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<dynamic> user = [];
  List<dynamic> user2 = [];

  @override
  Widget build(BuildContext context) {
    fetch();
    fetch2();

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.import_contacts_outlined),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hub),
            label: 'Hub',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.messenger_outline))
        ],
        leading: IconButton(
          onPressed: () {},
          icon:
              IconButton(onPressed: () {}, icon: const Icon(Icons.notes_sharp)),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Hello, Priya!',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 5),
            child: Text(
              'What do you want to learn today ?',
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
            ),
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20, left: 35),
              child: OutlinedButton.icon(
                onPressed: () {
                  print('Button pressed!');
                },
                icon: const Icon(
                  Icons.bookmark_add,
                  color: Colors.blue,
                ),
                label: const Text(
                  'Pragrams',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(160, 60.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  side: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: OutlinedButton.icon(
                onPressed: () {
                  print('');
                },
                icon: const Icon(
                  Icons.help_outlined,
                  color: Colors.blue,
                ),
                label: const Text(
                  'Get Help',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(160, 60.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  side: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            )
          ]),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(top: 30, right: 20, left: 35),
              child: OutlinedButton.icon(
                onPressed: () {
                  print('Button pressed!');
                },
                icon: const Icon(
                  Icons.import_contacts_outlined,
                  color: Colors.blue,
                ),
                label: const Text(
                  'Pragrams',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(160, 60.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  side: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: OutlinedButton.icon(
                onPressed: () {
                  print('Button pressed!');
                },
                icon: const Icon(
                  Icons.analytics,
                  color: Colors.blue,
                ),
                label: const Text(
                  'DD tracker',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(160, 60.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  side: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            )
          ]),
          const SizedBox(
            height: 60,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Program for you',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 170),
                child: Text('view all'),
              ),
              Icon(Icons.arrow_forward)
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: boxes(imagePaths1, user),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Events and experiances',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 110),
                child: Text('view all'),
              ),
              Icon(Icons.arrow_forward)
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: boxes1(imagePaths, user2),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Lessions for you',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 165),
                child: Text('view all'),
              ),
              Icon(Icons.arrow_forward)
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: boxes(imagePaths, user),
          ),
        ],
      ),
    );
  }

  void fetch() async {
    final url =
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs');
    final response = await http.get(url);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      user = json['items'];
      print("hrsfsdf");
    });
  }

  void fetch2() async {
    final url =
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/lessons');
    final response = await http.get(url);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      user2 = json['items'];
      print("hf");
    });
  }
}
