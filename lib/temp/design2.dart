import "package:flutter/material.dart";

class Design extends StatelessWidget {
  const Design({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[500],
      body: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        // backgroundImage: NetworkImage(''),
                        backgroundColor: Colors.red,
                        child: Text("Test"),
                        maxRadius: 35,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Micheal,',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            'Welcome back!',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(
                    Icons.settings,
                    size: 45,
                    color: Colors.white70,
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                      child: Text("Hello"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
