
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './data/section-data.dart';
import './section-style.dart';
class section extends StatelessWidget {

    @override 
    Widget build(BuildContext context){
            return Container(
                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: dataSection.classe.map((item){

                           return Container(                        
                             decoration: BoxDecoration(
                               gradient:LinearGradient(
                                  colors: 
                                  (item['nameClass'] == "oddNumber") ? 
                                  [
                                    const Color.fromARGB(255, 66, 225, 21), const Color.fromARGB(255, 71, 131, 251)
                                  ] : [
                                    Colors.red,
                                    const Color.fromARGB(255, 251, 5, 255)
                                  ]
                                  
                                  ,
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter
                                ),

                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20)
                                )

                             ),

                            margin: EdgeInsets.only( bottom: 20),                        
                            child: Flex(
                            direction: Axis.horizontal,
                            children: [
                                  TextButton( 
                                    style: ElevatedButton.styleFrom(  
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero
                                        )
                                    ),
                                 onPressed: () => {
                                        context.push('/mathform/${item['class']}')
                                 }
                                  , child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 5.w,
                                      children:[ 
                                        Container(                                      
                                          decoration: BoxDecoration(
                                               borderRadius: BorderRadius.only(
                                                   bottomRight: Radius.circular(20)
                                               ),
                                              gradient: LinearGradient(colors: (item['nameClass'] == "oddNumber") ? 
                                              
                                              [const Color.fromARGB(255, 251, 177, 3), Colors.deepPurpleAccent] : [
                                                  const Color.fromARGB(255, 9, 239, 251),
                                                  Colors.greenAccent
                                              ]
                                              
                                              )
                                          ),
                                        height:130.h,
                                        width: 90.w,
                                          child: Flex(
                                            direction: Axis.horizontal,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                                 Text(item['class'], style: style.textNumber ,),
                                            ],
                                         )     
                                        ),
                                        Column(                                 
                                          children: [
                                                Container(          
                                                    margin: EdgeInsets.only(right: 100),                                  
                                                    child: Text(item['rank'], style: style.rank,),
                                                ),
                                                Container(
                                                  width: 200.w,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: item['content'].map<Widget>((item){
                                                         return Text(item, style: style.contentBtn,);
                                                    }).toList(),
                                                  ),
                                                )
                                          ],
                                      )
                                  ]
                                  ) 
                                )
                                 
                            ],
                          ),
                          )  ;                   
                        
                      
                    },
                            
                  ).toList(),
                  
                  )
            );
    }
}