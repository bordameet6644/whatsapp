// import 'package:flutter/material.dart';
//
//
// void main() => runApp(const AnimatedAlignExampleApp());
//
// class AnimatedAlignExampleApp extends StatelessWidget {
//   const AnimatedAlignExampleApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       body: Container(
//         height: 300,
//         width: 300,
//         color: Colors.red,
//         child: Text("hello world",style: TextStyle(
//           fontSize: 30
//         ),),
//       ),
//       ),
//     );
//   }
// }
//
// class AnimatedAlignExample extends StatefulWidget {
//   const AnimatedAlignExample({super.key});
//
//   @override
//   State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
// }
//
// class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
//   bool selected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: 50,
//         width: 500,
//         child: Center(child: Text("YOUR PUZZEL")),
//       ),
//     );
//   }
// }

//
// import 'dart:math' as math;
//
// import 'package:flutter/material.dart';
//
// void main() => runApp(const AnimatedBuilderExampleApp());
//
// class AnimatedBuilderExampleApp extends StatelessWidget {
//   const AnimatedBuilderExampleApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: AnimatedBuilderExample(),
//     );
//   }
// }
//
// class AnimatedBuilderExample extends StatefulWidget {
//   const AnimatedBuilderExample({super.key});
//
//   @override
//   State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
// }
//
// class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
//     with TickerProviderStateMixin {
//   late final AnimationController _controller = AnimationController(
//     duration: const Duration(seconds: 10),
//     vsync: this,
//   )..repeat();
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _controller,
//       child: Container(
//         width: 200.0,
//         height: 200.0,
//         color: Colors.green,
//         child: const Center(
//           child: Text('Whee!'),
//         ),
//       ),
//       builder: (BuildContext context, Widget? child) {
//         return Transform.rotate(
//           angle: _controller.value * 2.0 * math.pi,
//           child: child,
//         );
//       },
//     );
//   }
// }

import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() => runApp(const AnimatedBuilderExampleApp());

class AnimatedBuilderExampleApp extends StatelessWidget {
  const AnimatedBuilderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimatedBuilderExample(),
    );
  }
}

class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({super.key});

  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
        ),
        bottomNavigationBar: const TabBar(tabs: [
          Tab(
            text: 'CHATS',
          ),
          Tab(
            text: 'STATUS',
          ),
          Tab(
            text: 'CALLS',
          ),
        ]),
        body: Container(
          child: TabBarView(
            children: [
              Container(
                color: Colors.black87,
                child: chats(),
              ),
              Container(
                color: Colors.black87,
                child: status(),
              ),
              Container(
                color: Colors.black87,
                child: call(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class chats extends StatelessWidget {
  chats({super.key});
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "MEET BORDA",
                      style: TextStyle(fontSize: 20),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        "HI I AM MEET BORDA",
                        style: TextStyle(fontSize: 10),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "MAYANK CHAVDA",
                      style: TextStyle(fontSize: 20),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        "HI I AM MAYANK CHAVDA",
                        style: TextStyle(fontSize: 10),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "SHYAM MARDIYA",
                      style: TextStyle(fontSize: 20),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        "HI I AM SHYAM MARDIYA",
                        style: TextStyle(fontSize: 10),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "UMANG KATHIRIYA",
                      style: TextStyle(fontSize: 20),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        "HI I AM UMANG KATHIRIYA",
                        style: TextStyle(fontSize: 10),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "VIRPAL JADEJA",
                      style: TextStyle(fontSize: 20),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        "HI I AM VIRPAL JADEJA",
                        style: TextStyle(fontSize: 10),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "VISRUTA KUMBHANI",
                      style: TextStyle(fontSize: 20),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        "HI I AM VISRUTA KUMBHANI",
                        style: TextStyle(fontSize: 10),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "THUMMAR VIDURSHI",
                      style: TextStyle(fontSize: 20),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        "HI I AM THUMMAR VIDURSHI",
                        style: TextStyle(fontSize: 10),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "KRISHNA SHIROYA",
                      style: TextStyle(fontSize: 20),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        "HI I AM KRISHNA SHIROYA",
                        style: TextStyle(fontSize: 10),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "KRISHNA ITALIYA",
                      style: TextStyle(fontSize: 20),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        "HI I AM KRISHNA ITALIYA",
                        style: TextStyle(fontSize: 10),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "SANJANA AMBALIYA",
                      style: TextStyle(fontSize: 20),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        "HI I AM SANJANA AMBALIYA",
                        style: TextStyle(fontSize: 10),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class status extends StatelessWidget {
  status({super.key});
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3HVmYmxkQt4YYxA3URyYCRdf7oUK82uWVQw&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "MEET BORDA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3Newo-8u7S-4H-f9YH06Vhq1mUIGJqcw5jA&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "MAYANK CHAVDA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqxfsuF9Ff7pEi22CLF0TbuciNvVYKdFiZaw&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "SHYAM MARDIYA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCkZPVgSCAwRD0ToBA2ymsmAR5IfTJgYgZpQ&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                      child: Text(
                    "UMANG KATHIRIYA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnxFGNwFHxCAzNQdjxMI2zcucX6jPEtx640w&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "VIRPAL JADEJA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj6c6u-EfP368nfNjZTenMeHu0PE9h5sHUUA&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "VISRUTA KUMBHANI",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXl0gR4ZCfLXcTO198W4jjSjaHCeKle6SDYA&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "VIDURSHI THUMMAR",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzcVVGMAlRGYxVT7t9aNGapqcQL20e1EKlKA&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "KRISHNA SHIYORA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfeeFlgPkKuQZ1bgzdkA_pnXb9UmWMvrIfzw&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "KRISHNA ITALIYA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcl-HQPz4u1tmoaZS0j60DVhxU8PMj-2sbLiIJF718ljGe5nR3DIhkXTVnurawwED6IeM&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "SANJANA AMBALIYA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class call extends StatelessWidget {
  call({super.key});
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Card(
              child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3HVmYmxkQt4YYxA3URyYCRdf7oUK82uWVQw&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "MEET BORDA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                Center(
                    child: Icon(
                  Icons.call,
                  color: Colors.green,
                ))
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3Newo-8u7S-4H-f9YH06Vhq1mUIGJqcw5jA&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "MAYANK CHAVDA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                Center(
                    child: Icon(
                  Icons.call,
                  color: Colors.green,
                ))
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqxfsuF9Ff7pEi22CLF0TbuciNvVYKdFiZaw&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "SHYAM MARDIYA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                Center(
                    child: Icon(
                  Icons.call,
                  color: Colors.green,
                ))
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCkZPVgSCAwRD0ToBA2ymsmAR5IfTJgYgZpQ&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                      child: Text(
                    "UMANG KATHIRIYA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                Center(
                    child: Icon(
                  Icons.call,
                  color: Colors.green,
                ))
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnxFGNwFHxCAzNQdjxMI2zcucX6jPEtx640w&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "VIRPAL JADEJA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                Center(
                    child: Icon(
                  Icons.call,
                  color: Colors.green,
                ))
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj6c6u-EfP368nfNjZTenMeHu0PE9h5sHUUA&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "VISRUTA KUMBHANI",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                Center(
                    child: Icon(
                  Icons.call,
                  color: Colors.green,
                ))
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXl0gR4ZCfLXcTO198W4jjSjaHCeKle6SDYA&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "VIDURSHI THUMMAR",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                Center(
                    child: Icon(
                  Icons.call,
                  color: Colors.green,
                ))
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzcVVGMAlRGYxVT7t9aNGapqcQL20e1EKlKA&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "KRISHNA SHIYORA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                Center(
                    child: Icon(
                  Icons.call,
                  color: Colors.green,
                ))
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfeeFlgPkKuQZ1bgzdkA_pnXb9UmWMvrIfzw&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "KRISHNA ITALIYA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                Center(
                    child: Icon(
                  Icons.call,
                  color: Colors.green,
                ))
              ],
            ),
          )),
          Card(
              child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcl-HQPz4u1tmoaZS0j60DVhxU8PMj-2sbLiIJF718ljGe5nR3DIhkXTVnurawwED6IeM&usqp=CAU"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "SANJANA AMBALIYA",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                Center(
                    child: Icon(
                  Icons.call,
                  color: Colors.green,
                ))
              ],
            ),
          )),
        ],
      ),
    );
  }
}
