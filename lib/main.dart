import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SGMeet(),
      debugShowCheckedModeBanner: false,
    );
  }
}

main() => runApp(
      MyApp(),
    );

class SGMeet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            title: Text(
              'Meet & Chat',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.028,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.schedule,
            ),
            title: Text(
              'Meetings',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.028,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_contact_calendar,
            ),
            title: Text(
              'Contacts',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.028,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.028,
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff39394d),
        leading: Icon(Icons.star_border),
        title: Text('Meet & Chat'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/write.png',
              color: Colors.white.withOpacity(0.5),
              scale: 20,
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/chat.png',
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                  ),
                ],
              ),
              Text(
                'Find People and Start Chatting!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Add Contacts',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.045,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: 'Search',
                        fillColor: Colors.black12.withOpacity(0.04),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * 0.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.width * 0.14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffff742e),
                          ),
                          child: Icon(
                            Icons.videocam,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.08,
                          ),
                        ),
                        Text(
                          'New Meeting',
                          style: TextStyle(
                            color: Colors.black.withOpacity(
                              0.6,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.width * 0.14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff0d72ed),
                          ),
                          child: Icon(
                            Icons.add_box,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.07,
                          ),
                        ),
                        Text(
                          'Join',
                          style: TextStyle(
                            color: Colors.black.withOpacity(
                              0.6,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.width * 0.14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff0d72ed),
                          ),
                          child: Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.07,
                          ),
                        ),
                        Text(
                          'Schedule',
                          style: TextStyle(
                            color: Colors.black.withOpacity(
                              0.6,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.14,
                          height: MediaQuery.of(context).size.width * 0.14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff0d72ed),
                          ),
                          child: Icon(
                            Icons.file_upload,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.08,
                          ),
                        ),
                        Text(
                          'Share Screen',
                          style: TextStyle(
                            color: Colors.black.withOpacity(
                              0.6,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
