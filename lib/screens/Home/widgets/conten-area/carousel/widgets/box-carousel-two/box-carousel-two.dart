

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './box-carousel-two-style.dart';
import './box-carousel-two-data.dart';
import './widget/common-frame.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class boxCarouseTwo extends StatelessWidget {

      @override
      Widget build(BuildContext context){
            return Container(
         
              width: double.infinity,
                child: Column(
                  children: [
                      Container(
                        width: 350.w,
                        decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                Radius.circular(10)
                                ),
                                     
                                
                                 color: const Color.fromARGB(255, 198, 226, 231),
                        ),
                       
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                  child: Text("Mathcoder.vn", style: style.titleBox1,),
                              ),
                              Container(
                                width: 230.w,
                                height: 80.h,
                                child: Text("Ứng dụng tự học phong phú, toàn diện nhất", textAlign: TextAlign.center, style: style.text,),
                              ),
                              Container(
                                width: double.infinity,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(
                                     Radius.circular(10)
                                  )
                               ),
                                child:commonContent(
                                  content: listData.dataBox1,
                                  nameTitle: "Tự học",
                                  image: "assets/assets-home/carousel/online-education.png",
                              ),
                              
                              ),  Container(
                                margin: EdgeInsets.only(top: 20),
                                width: double.infinity,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.all(
                                     Radius.circular(10)
                                  )
                               ),
                                child:commonContent(
                                  content: listData.dataBox2,
                                  nameTitle: "Luyện tập",
                                  image: "assets/assets-home/carousel/reading.png",
                              ),
                              
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                width: double.infinity,
                               decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                     Radius.circular(10)
                                  )
                               ),
                                child:commonContent(
                                  content: listData.dataBox2,
                                  nameTitle: "Trí tuệ nhân tạo",
                                  image: "assets/assets-home/carousel/artificial-intelligence.png",
                              ),
                              
                              )
                          
                          ],
                        ),
                      ),
               



                  ],
                ),
            );
      }
}