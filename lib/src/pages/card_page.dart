import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _card_Tipo1(),
          SizedBox(
            height: 30.0,
          ),
          _card_Tipo2(),
          SizedBox(
            height: 30.0,
          ),_card_Tipo1(),
          SizedBox(
            height: 30.0,
          ),
          _card_Tipo2(),
          SizedBox(
            height: 30.0,
          ),_card_Tipo1(),
          SizedBox(
            height: 30.0,
          ),
          _card_Tipo2(),
          SizedBox(
            height: 30.0,
          ),_card_Tipo1(),
          SizedBox(
            height: 30.0,
          ),
          _card_Tipo2(),
          SizedBox(
            height: 30.0,
          ),_card_Tipo1(),
          SizedBox(
            height: 30.0,
          ),
          _card_Tipo2(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget _card_Tipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
              leading: Icon(
                Icons.photo_album,
                color: Colors.blue,
              ),
              title: Text('Titulo'),
              subtitle:
                  Text('asdjhbwi dif sjbfbas  saaoiej grhbda bsuv abdkn<dib')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {}, child: Text('ok')),
              FlatButton(onPressed: () {}, child: Text('cancelar'))
            ],
          )
        ],
      ),
    );
  }

  Widget _card_Tipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'http://imagebank.biz/wp-content/uploads/2014/02/56020.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            //height: 300.0,
            fit: BoxFit.cover,
          ),
          /*Image(
              image: NetworkImage(
                  'http://imagebank.biz/wp-content/uploads/2014/02/56020.jpg')),*/
          Container(padding: EdgeInsets.all(10.0), child: Text('Joligud'))
        ],
      ),
    );
  }
}
