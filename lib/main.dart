import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project2',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

add() {
  print("hi");
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: const Color.fromRGBO(51, 51, 62, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.account_circle,
              size: 100,
              color: Color.fromRGBO(50, 1, 244, 1),
            ),
            const SizedBox(height: 20),
            const TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(30, 25, 40, 1),
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Color.fromRGBO(30, 25, 40, 1),
              ),
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(50, 1, 244, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              icon: const Icon(Icons.lock, size: 18),
              label: const Text('Login'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        padding: EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              fixedSize: Size(100.0, 50.0),
            ),
            child: Row(
                mainAxisSize: MainAxisSize.min, children: [const Text('Back')]),
          ),
        ]),
      ),
      backgroundColor: const Color.fromARGB(255, 45, 45, 253),
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: add,
                  child: Text(
                    "FLY",
                    style: const TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
                    side: MaterialStateProperty.all(const BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    )),
                  ),
                ),
                const Text(
                  "SLEEP",
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  "EAT",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(50, 1, 244, 1),
                      labelText: 'Travellers',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(50, 1, 244, 1),
                      labelText: 'Choose Orgin',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.location_pin,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(50, 1, 244, 1),
                        labelText: 'Choose Destination',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(
                          Icons.flight,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(50, 1, 244, 1),
                        labelText: 'Select Dates',
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                    color: Colors.white),
                child: Scrollbar(
                    child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: [
                      Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: [
                              newMethod(),
                              newMethod(),
                              newMethod(),
                              newMethod(),
                              newMethod(),
                              newMethod(),
                              newMethod(),
                            ],
                          ))
                    ]),
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column newMethod() {
    return Column(children: [
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Image.network(
            'https://picsum.photos/250?image=9',
            width: 75.0,
            height: 80.0,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Aspen, United States"),
              const Text("1 stop, 6h 15m"),
            ],
          )
        ],
      ),
      const Divider(
        color: Color.fromARGB(116, 0, 0, 0),
        height: 20,
        thickness: 0.5,
      )
    ]);
  }
}
