

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import '../../layout/main-app-bar/main-app-bar.dart';
import 'package:flutter/services.dart';
class mainTheoryPage  extends StatefulWidget {
  final String? theoryPage;
  final String? nameJson;
  final String? nameAppBar;
  const mainTheoryPage({
      Key?key,
      required this.theoryPage,
      required this.nameJson,
      required this.nameAppBar

  }) : super(key: key);


    @override
 _stateTheory createState() => _stateTheory();
}


class _stateTheory extends State<mainTheoryPage> {
  List<Map<String,dynamic>> listData = [];

  // thực hiện định nghĩa 1 hàm bất đồng bộ 
void handleLocation() async {
      final String loadData = await rootBundle.loadString("assets/theory-data/${widget.theoryPage}/${widget.nameJson}.json");
      List<dynamic> data = json.decode(loadData);
      
      final List<Map<String,dynamic>> convertData = data.map((e) => 
              Map<String,dynamic>.from(e)
          ).toList();
             setState(() {
            listData = convertData;
      });
      
      }
   

  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    handleLocation();

  }

        
       
Widget build(BuildContext context){
   
      return  Scaffold(
        appBar: MainAppBar(
              nameAppBar: "${widget.nameAppBar}",
               indexAppBar: 0
        ) ,
        body: listData.isEmpty ? 
          Center(child: CircularProgressIndicator())
           : 
           
          Text("dữ liệu nhận được ${listData[0]['name']}"),
      );
      
      
       
}
       
}