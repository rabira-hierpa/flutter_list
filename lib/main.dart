import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_list/quote.dart';
import 'package:flutter_list/quoteCard.dart';

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
        children: quotes.map((quote) =>  QuoteCard(
          quote: quote,
          delete: (){
            setState((){
              quotes.remove(quote);
            });
          }
        )).toList() ,
      ),
    );
  }
}

