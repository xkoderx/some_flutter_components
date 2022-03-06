import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            margin: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pinimg.com/originals/dd/d5/b2/ddd5b2f90e660eb4f881a59c416f3ac9.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('EM'),
              backgroundColor: Colors.brown,
              
            ),
          )
        ],
      ),
      body: Center(child: FadeInImage(image: NetworkImage('http://cdn26.us1.fansshare.com/photo/theamazingspiderman3/spidey-profile-on-white-fin-the-amazing-spider-man-green-goblin-1777332442.jpg'),placeholder: AssetImage('assets/jar-loading.gif'),fadeInDuration: Duration(milliseconds: 200),)),
    );
  }
}
