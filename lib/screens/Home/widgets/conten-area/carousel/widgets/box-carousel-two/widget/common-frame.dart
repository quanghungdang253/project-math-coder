

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../box-carousel-two-style.dart';
class commonContent extends StatelessWidget {
  final List<Map<String,dynamic>> content;
  final String nameTitle;
  final String image;
  const commonContent({
    super.key, 
    required this.content,
     required this.nameTitle,
     required this.image
});

Widget build(BuildContext context){
          return  Material(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: const Color.fromARGB(255, 251, 251, 251),
                        elevation: 10,
                        child:  Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                       
                            
                            borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(20),
                               topRight: Radius.circular(20)
                            )
                        ),
                        child: Column(
                            children: [
                              Container(
                                
                               margin: EdgeInsets.only(bottom: 10),
                                child: Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.center,                                                  
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          image,
                                          fit: BoxFit.cover,
                                      ), 
                                    ),
                                      
                                        Text(nameTitle, style: style.textTitle,)
                                  ],
                                ) ,
                              ),
                              Container(
                                 child: Column(
                                   children: 
                                    content.map<Widget>((item){
                                      return Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: Flex(
                                        direction: Axis.horizontal,
                                        spacing: 10,
                                        children: [
                                            Container(
                                              width: 60.w,
                                               child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10)
                                                ),
                                                child: Image.asset(item['img'], 
                                               fit: BoxFit.cover,
                                            ), 
                                               )
                                                            
                                            ),
                                            Column(
                                              children: [
                                                 Container(
                                                    width: 200.w,
                                                    child: Text(item['title'], textAlign: TextAlign.start, style: style.titleContent
                                                  ) ,
                                                ),
                                                 Container(
                                                  width: 220.w,
                                                    child: Text(item['content'], textAlign: TextAlign.start,) ,
                                                )
                                              ],
                                            )
                                           
                                        ],
                                      ),
                                    );
                                    }).toList()
                                 
                                   
                                 ),
                              )
                             
                            ],
                        ),
                      ) ,
                      );
                    
      
}
}