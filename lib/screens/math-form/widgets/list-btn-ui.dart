
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/selection-list.dart';
import './list-btn-ui-style.dart';
class listBtnUI extends StatelessWidget {
  final List<Map<String,dynamic>> dataBtn;
      const listBtnUI({super.key, required this.dataBtn});


@override
      Widget build(BuildContext context){
          return Container(
        margin: EdgeInsets.only(top: 20),
              child: Column(
                spacing: 20,
                  children: dataBtn.map((item){
                          return selectionList(
                            colorGradian1:  (item['nameClass'] == "oddNumber") ?    const Color.fromARGB(255, 3, 255, 238) : Colors.deepOrange,
                            colorGradian2:   (item['nameClass'] == "oddNumber") ?    const Color.fromARGB(255, 135, 216, 4) : Colors.limeAccent,        
                            borderRadius: 10,
                            width: 320.w,
                            height: 100.h,
                             onTap: (){},
                              child:   Container(
                                padding: EdgeInsets.all(10),
                             child: Flex(
                                direction: Axis.horizontal,
                                children: [
                                    Container(
                                      width: 100.w,
                                      height: 100.h,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20)
                                        ),
                                        child:Image.network(
                                          item['img'],
                                          fit: BoxFit.cover,
                                       ),
                                      )
                                    
                                    ),
                                    Container(
                                      width: 150.w,
                                      child: Column(
                                        children: [
                                              Text(item['nameTopic'], style: style.textTitle),
                                              Text(item['name'], textAlign: TextAlign.center,style: style.textContent)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(999)
                                        ),
                                          border: Border.all(
                                             color: Colors.black
                                          )
                                      ),
                                      child: Icon(Icons.arrow_forward),
                                    )
                                ],
                              ),
                          ),                        
                      );
                          
                    
                  }).toList(),
              ),
          );
      }
}