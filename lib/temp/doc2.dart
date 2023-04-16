import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.orangeAccent],
            ),
          ),
          child: SafeArea(
              child: Center(
            child: ListTile(
              title: Text("Test"),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            ),
          )),
        ),
      ),
      body: MainView(),
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            showBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    color: Colors.red,
                    child: SizedBox(
                      height: 450,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Close"),
                      ),
                    ),
                  );
                });
          },
          child: Text("Show")),
    );
  }
}
