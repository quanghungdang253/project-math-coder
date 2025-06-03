import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../layout/sub-header/sub-header.dart';
import './widgets/slide-image/slide-image.dart';
import './home-screen-style.dart';
import './widgets/conten-area/list-menu/list-menu.dart';
import 'widgets/conten-area/carousel/main-carousel.dart';
class Home extends StatefulWidget {
          @override
      _StateHome createState() => _StateHome();
}


class _StateHome extends State<Home> {

    @override  
    Widget build(BuildContext context) {
         return
          Container(
            child: Column(
             children: [
                Container(            
                     child: SubHeader(),
              ),  
           
              Expanded(
                child: Container(
                     padding: EdgeInsets.only(left: 5, right: 5),
                     child:  SingleChildScrollView(
                     child: Column(
                    children: [
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                width: double.infinity,
                child: Text("Chào mừng bạn đến với Mathcoder!", style: style.textWellcome , textAlign: TextAlign.start,),
              ),
              Container(
                  margin: EdgeInsets.only(left: 5, bottom: 10),
                  alignment: Alignment.centerLeft,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                         Text("Khóa học", style: style.textTitle), 
                      
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black
                            ),
                             borderRadius: BorderRadius.all(
                              Radius.circular(999)
                             )
                          ),
                            child: Row(
                              spacing: 5,
                                children: [
                                      Text("Xem thêm", style: style.viewAdd, ),
                                      Icon(
                                        Icons.arrow_forward,
                                       size: 17,
                                       
                                     )
                        

                                ],
                            ),
                        )
                       
                            
                         
                        
                      ],
                  )
                  
              
                   
              ),
              Container(
                  child: SlideImage(),
              ),
              Container(
                  child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
             
              ),

              Container(
                  margin: EdgeInsets.only(left: 5),
                  alignment: Alignment.topLeft,
                  child: Text("Tự luyện", style: style.textTitle),
              ),

              Container(
                child:ListMenu(),
              ),
              Container(
                  child: carouselWidget(),
              ),

              SizedBox(
                height: 10000,
              ),
                
        ],
        )  ,
   ),
            )                  
        )
      ],
         ) ,
          );
     
         
         
        
    }
  
}