// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.star,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                      flex: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upcoming Events',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 25,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'You Recent plans will show here.',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          SizedBox(height: 10),
                          ClipPath(),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(31)),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: TextButton.icon(
                                onPressed: () {
                                  Get.bottomSheet(
                                    Center(
                                      child: SingleChildScrollView(
                                        child: Container(
                                          color: Colors.white,
                                          height: 350,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Center(
                                              child: Text('Add More Plans')),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                icon: Icon(Icons.add),
                                label: Text(
                                  'Add a plan',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text('List of your Plans'),
              ),
            ),
            Container(
              height: 5,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.task_alt,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Assigned Tasks',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(31)),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: TextButton.icon(
                              onPressed: () {
                                Get.bottomSheet(
                                  Center(
                                    child: SingleChildScrollView(
                                      child: Container(
                                        color: Colors.white,
                                        height: 400,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Center(
                                            child: Text('Choose a plan')),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              icon: Icon(Icons.add),
                              label: Text(
                                'Add a Task',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text('Assigned Tasks list'),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 5,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.family_restroom,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Family Expectations',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(31)),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: TextButton.icon(
                              onPressed: () {
                                Get.bottomSheet(
                                  Center(
                                    child: SingleChildScrollView(
                                      child: Container(
                                        color: Colors.white,
                                        height: 400,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Center(
                                            child: Text(
                                                'Write Some more Expectations')),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              icon: Icon(Icons.add),
                              label: Text(
                                'More from them',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text('Expectations List'),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 5,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.summarize_outlined,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                      flex: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Summery',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Last 24-hours Detail',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          SizedBox(height: 10),
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 5,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
