// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.fromLTRB(8, 30, 8, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      radius: 40,
                      child: Icon(
                        Icons.person,
                        size: 40,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ListTile(
                      title: Text(
                        'User Name',
                        // "${loggedinUser.firstName}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'User Email',
                        // "${loggedinUser.email}",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.playlist_add_rounded),
                    title: Text('Plans'),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Card(
                  child: InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(Icons.person_add_alt_sharp),
                      title: Text('Personal Diary'),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Card(
                  child: InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(Icons.ac_unit_sharp),
                      title: Text('Hobbies'),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Card(
                  child: InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(Icons.collections_bookmark_rounded),
                      title: Text('Collection'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  'Shortcuts ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                children: [
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 80,
                      width: 160,
                      child: Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.group,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Friends',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 80,
                      width: 160,
                      child: Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.groups,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Groups',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 80,
                      width: 160,
                      child: Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.alarm_rounded,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Memories',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 80,
                      width: 160,
                      child: Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.save,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Saved',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
