
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../layout/main-app-bar/main-app-bar.dart';
import './widget/section/section.dart';
import '../../layout/sub-header/sub-header.dart';
import '../../widgets/slide-animation-image.dart';
import './widget/section/data/section-data.dart';
class mainSection extends StatelessWidget {
    @override
    Widget build(BuildContext context){
        return Container(
          color: Colors.white,
          child: Column(
            children: [
                 MainAppBar(
                       nameAppBar: "Công thức giải toán",
                       indexAppBar: 0
                 ),
                 Container(
                       child: SubHeader(),
                 ),
              Expanded(
                child: 
                  Container(
                       height: 10000,
                      child:  SingleChildScrollView(
                         child: 
                            Column(
                                children: [                          
                                     Container(
                                      width: 400.w,
                                      height: 220.h,
                                       child: slideAnimationImage(
                                        widthImage: double.infinity,
                                        heightImage: 150.h,
                                       color: Colors.white,
                                        customsloadImg: false,
                                        image: dataSection.listImg, 
                                        onTap: (){}
                                      ),
                                    ),
                                      Container(                            
                                    
                                        width: 350.w,
                                        child: Column(
                                           children: [
                                              Container(
                                                margin: EdgeInsets.only(left: 10, right: 10, top: 0),
                                                child: section(),
                                              )
              
                                         ],
                                       ) ,
                                    ),
                                 
            ],
          ) ,
            )
          )
              
              
              
              )
            ],
          ),
            
 

          
     
          
    
        

          
          
         
          
       
        );
        
    
        
        
    
    }
}