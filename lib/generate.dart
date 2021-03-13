import 'package:flutter/material.dart';

String input='OR_code_Generaor';


class generate extends StatefulWidget {
  @override
  _generateState createState() => _generateState();
}

class _generateState extends State<generate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Qr code geneator app'),),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                Container(
                  decoration: BoxDecoration(
                    border:Border.all(style:BorderStyle.solid,width:2.0),
                    borderRadius: BorderRadius.all(Radius.circular(15.0),
                    )
                    ),
                    child:Image.network('https://api.qrserver.com/v1/create-qr-code/?size=360x360&data=$input'),
                    width: 400.0,
                    height: 400.0,
                  ),
                  SizedBox(height:20.0),
                  Container(child: Text('QR Code for $input'),),
                  SizedBox(height:20.0),
                  Container(
                    child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0),
                    ),
                    hintText:'Type here',
                    hintStyle: TextStyle(color:Colors.grey),
                    ),
                   onChanged: (value){
                     setState(() {
                       input=value;
                     });
                   },
                   ),
                   ),
               ]),
              ),
            )
          ),
        );
  }
} 