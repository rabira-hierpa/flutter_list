import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_list/quote.dart';

void main() => runApp(MaterialApp(
  home: QuotList(),
));

class QuotList extends StatefulWidget {
  @override
  _QuotListState createState() => _QuotListState();
}

class _QuotListState extends State<QuotList> {

List<Quotes> quotes =[
  Quotes(text:'ተኝቶ የተለወጠ የሞተ ስው ብቻ ነው',author:'ረብራ ሂርጳ'),
  Quotes(text:'እግዚያብሔር ሲባርክ ሊያቀማጥል ሳይሆን አንቡላህን ሊያጠራ ነው',author:'ረብራ ሂርጳ'),
  Quotes(text:'ከሰው ጋር ከሮጠ ከእግዚያብሔር ጋር የቆመ ይቀድማል',author:'በረከት ስለሞን'),
  Quotes(text:'እስከ ዛሬ መቃብሩ ባዶ የሆነው የኢየሱስ ብቻ ነው',author:'ረብራ ሂርጳ'),
];

Widget quoteTemplate(quote){
  return new QuoteCard(quote: quote);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Rz Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) =>  quoteTemplate(quote)).toList() ,
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quotes quote;

  QuoteCard({this.quote});


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
              child: Text("\"${quote.text}\"",style:TextStyle(fontSize: 24,),textAlign: TextAlign.center,),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,16,0),
                child: Text('- ${quote.author}',style: TextStyle(fontStyle: FontStyle.italic),),
              )
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
