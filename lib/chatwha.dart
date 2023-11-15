import 'package:flutter/material.dart';

class Meeting extends StatefulWidget {
  const Meeting({Key? key}) : super(key: key);

  @override
  State<Meeting> createState() => _MeetingState();
}

class _MeetingState extends State<Meeting> {
  late PageController pgc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(top: 10, left: 144),
          child: Text(
            'Meet',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle New Meeting button press
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('New Meeting'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Join with a Code button press
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Join with a Code'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(top: 50, bottom: 10),
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/meet.jpg"),
              ),
            ),
          ),
          SizedBox(height: 20),
           Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Get a link that you can share',

                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),

              ),

            ),

          ),
        ],
      ),
    );
  }
}
