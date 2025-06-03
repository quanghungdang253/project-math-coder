

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './introdule-ui-style.dart';
class introduleUi extends StatelessWidget {
  final String ? nameClass;

    const introduleUi({super.key , required this.nameClass});
  
        Widget build(BuildContext context){
            int convertType = int.parse(nameClass!);
        
              return Container(
                      child: Column(
                        children: [
                          
                          
                            Container(
                                margin: EdgeInsets.only(top: 10.h),
                                child: Image.asset("assets/math-form/img-3.jpg", fit: BoxFit.cover,),
                            ),
                            Stack(
                      children: [
                          Container(
                              height: 100.h,
                              width: 350.w,
                              child: Image.asset("assets/math-form/img-1.jpg"),
                            ),
                        Positioned(
                          left: 30.w,
                          top: 25.w,
                           child:   Container(
                              child: Row(
                                children: [
                                  Text(
                                        "MATHCODER",
                                        style: style.textTitle,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 10,
                                      right: 10
                                    ),
                                    width: 1.w,
                                    height: 30.h,
                                    color: Colors.deepOrangeAccent,
                                      child: Text(""),
                                  ),
                                Text(
                                        "TOÁN LỚP $convertType",
                                         style: style.textTitle,                              
                                  ),
                                ],
                              )
                          
                          
                            ),
                                    )
                              ],
                            ),
                            
                     
                              Container(
                              child: Image.asset("assets/math-form/img-2.jpg"),
                            ),

                              Container(
                              child: nameClass == "1" ? 
                                Image.asset("assets/math-form/img-4.gif") : 
                                null
                            )
                        ],
                      ),
              );
        }
}