

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import './data/data-list-menu.dart';
import '../../../../../widgets/customs-button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './list-menu-style.dart';
class ListMenu extends StatelessWidget {

  @override

  Widget build(BuildContext context){
      double screenWidth = MediaQuery.of(context).size.width;
        return Column(
          children: [
        Container(
            child: GridView.builder(
                shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.w,
            crossAxisSpacing:10.w
           ), 
           itemCount: 6,
            itemBuilder: (context , index ){
                final dataListMenus = dataListMenu.dataBtn[index];
                        return Container(
                 
                      child: 
                      
                      CustomButton(
                       
                           colorGradian1: dataListMenus['nameClass'] == "oddNumber" ?   const Color.fromARGB(255, 2, 247, 255) : const Color.fromARGB(239, 5, 255, 59),
                           colorGradian2: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: 20 ,
                            height:60.h,
                            onTap: (){
                                context.push(dataListMenus['enpointRoute']);
                            },
                            child: Column(
                            children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 100.h,
                              width: screenWidth * 0.9,
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                ),
                                child:  Image.network(
                                dataListMenus['img'],
                                 fit: BoxFit.cover,
                              ),
                              )                             
                            ),
                           Container(
                               child: Text(dataListMenus['name'], style: listMenu.textButton,),
                           ),
                           Container(                           
                                margin: EdgeInsets.only(top: 5),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                 color: const Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(999)
                                  ),
                                  gradient: LinearGradient(
                                      colors: [const Color.fromARGB(255, 8, 250, 229), const Color.fromARGB(255, 235, 239, 28)],                                                             
                                  )
                                 
                            ),
                             child: Text("Tham gia ngay", style: listMenu.textNode, )                           
                           )
                          ],
                           ),
                      
                      )
                        ); 
            }         
          )
        ),
        Container(
          margin: EdgeInsets.only(top: 10.w, bottom: 10),
          child: CustomButton(
            
          backgroundColor: Colors.black,
          width: 360.w,
          height: 230.h,
          borderRadius: 20,
            onTap: (){
                  
            },
            child: Container(
              padding: EdgeInsets.all(15),             
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                       
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          
                            borderRadius: BorderRadius.all(
                                Radius.circular(10),
                            ),
                          
                        ),
                        child: Text("Công cụ giải toán", style: listMenu.textComputer,),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 20.w,
                            children: [
                                Column(
                                    children: [
                                         Container(                            
                                         height: 130.h,
                                         child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10)
                                          ),
                                           child:Image.network(
                                         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm5Mc_KK-Il0b2K-exjk8rEL1hXPaiEPfSanineyaIlVTd_xOalgmNpui6EH5WWvpmYQI&usqp=CAU",
                                         fit: BoxFit.cover,                        
                                      ), 
                                  )
                              ),
                                           
                        ],
                                     ),
                                    Container(
                                      width: 150.w,
                                      decoration: BoxDecoration(
                                    
                                      borderRadius: BorderRadius.all(
                                                      Radius.circular(10)
                                                   ),
                                                         color: Colors.amberAccent,
                                                ),                                         
                                                padding: EdgeInsets.all(10),
                                      child:   Text("Công cụ hỗ trợ giải các bài toán công thức toán học", style: listMenu.textComputerone,),
                                              
                              ),                                           
              
                                
                            ],
                      )
                
                    
                      
                       
                    ]
                ),
            ),
          
        ) ,
        )
     
      ]
    );
  }
}
        
        

        
        
  







