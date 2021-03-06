import "package:english_words/english_words.dart";
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
final var word_index=[];
//WordInfo
class WordInfo extends StatelessWidget
{
  var radius=10;
  final Color color_background=Color.fromRGBO(231, 244, 254, 1);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home:Scaffold(

            body:Container(
                margin:EdgeInsets.only(top: 0,left:0),
                width: 1080,
                height: 1920,
                color:color_background,
                child:Column(
                  children: [
                    Container(
                        width:350,
                        height:120,
                        child: Container(
                            margin:EdgeInsets.only(top:30,left: 0),
                            child:Text("empty",
                                textAlign: TextAlign.center,
                                textScaleFactor:2,
                                style:new TextStyle(
                                    fontSize: 20,
                                    color:Colors.cyan
                                ))),
                        margin: EdgeInsets.only(top:65),
                        decoration:new BoxDecoration(
                            color:Colors.white,
                            borderRadius: new BorderRadius.only(topLeft:Radius.circular(50),topRight: Radius.circular(50),bottomLeft: Radius.circular(50),bottomRight:Radius.circular(50)),
                            boxShadow:[BoxShadow(color:Colors.black12,offset: Offset(5.0,5.0),blurRadius: 10,spreadRadius: 2.0)]
                        )

                    ),//word
                    Container(
                      margin:EdgeInsets.only(top:45),
                      width: 350,
                      height: 460,
                      decoration: new BoxDecoration(
                          color:Colors.white,
                          borderRadius:BorderRadius.all(Radius.circular(50)),
                          boxShadow:[BoxShadow(color:Colors.black12,offset: Offset(5.0,5.0),blurRadius: 10,spreadRadius: 2.0)]
                      ),
                    ),//
                    Container(
                        margin: EdgeInsets.only(top:40),
                        child:Row(
                          children: [
                            //????????????
                            Container(
                              margin:EdgeInsets.only(right: 40),
                              height: 90,
                              decoration: new BoxDecoration(
                              ),
                              child: RaisedButton(onPressed: (){},
                                  shape: CircleBorder(),
                                  color:Color.fromRGBO(240, 206, 235, 1)),
                            ),
                            //????????????
                            //???????????????
                            Container(
                              margin:EdgeInsets.only(right: 40),
                              height: 90,
                              child: RaisedButton(onPressed: (){},shape: CircleBorder(),color:Color.fromRGBO(249, 255, 214, 1.00)),),
                            //???????????????
                            //??????
                            Container(
                              margin:EdgeInsets.only(),
                              height: 90,
                              child: RaisedButton(onPressed: (){},shape: CircleBorder(),color:Color.fromRGBO(178, 255, 169, 1)),),
                            //??????
                          ],
                        ),
                        width:350,
                        height: 100,
                        decoration: new BoxDecoration(
                          color:color_background,
                        )
                    )
                  ],
                )
            )
        )
    );
    throw UnimplementedError();
  }
}
//WordInfo
class mianPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    home:Scaffold(
    body:Center(
    child:
   Container(
    child:RaisedButton(onPressed: (){
      Navigator.push(context,new MaterialPageRoute(builder: (context)=>new WordInfo()));
}),
    width:180,
    height: 180,

    )
    )
    )
    );
    throw UnimplementedError();
  }

}
void main()
{
  runApp(
      MaterialApp(
          home:mianPage()
      )
  );
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
    SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
//receive successful