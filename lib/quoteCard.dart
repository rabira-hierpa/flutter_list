import 'package:flutter/material.dart';
import 'package:flutter_list/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quotes quote;
  final Function delete;
  QuoteCard({this.quote,this.delete});


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(8,8,8, 0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("\"${quote.text}\"",style:TextStyle(fontSize: 20,),textAlign: TextAlign.center,),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,16,0),
                child: Text('- ${quote.author}',style: TextStyle(fontStyle: FontStyle.italic),),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton.icon(
                  padding: EdgeInsets.all(0),
                  onPressed: delete,
                  icon: Icon(Icons.delete,color: Colors.redAccent,),
                  label: Text('')),
            ],
          ),
        ],
      ),
    );
  }
}
