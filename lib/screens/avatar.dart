import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Avatars'), actions: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          child: CircleAvatar(
            backgroundColor: Colors.green[900],
            child: const Text('CA'),
          ),
        )
      ]),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2Fb4%2F5d%2Fde%2Fb45dde5e1e914c47c77d3d224481d01d.jpg&f=1&nofb=1'),
        ),
      ),
    );
  }
}
