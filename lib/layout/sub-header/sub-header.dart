
import 'package:flutter/material.dart';
import './sub-header-style.dart';
import 'package:go_router/go_router.dart';
class SubHeader extends StatelessWidget {
    @override

    Widget build(BuildContext context){
   double screenWidth = MediaQuery.of(context).size.width;

        return Container(
    
          decoration: BoxDecoration(
                 gradient: LinearGradient(
                    colors: [const Color.fromARGB(255, 251, 3, 255), const Color.fromARGB(255, 6, 171, 248)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
                 ,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                )
          ),
        padding: EdgeInsets.all(10),
          child: Flex(
              direction: Axis.horizontal,
              spacing: screenWidth * 0.11,
              children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        )
                    ),
                    width: screenWidth * 0.2,
                    child: TextButton(
                      onPressed: (){
                          context.go("/Home");
                      },
                      child: ClipRRect(
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(10), 
                      child: Image.asset(
                      'assets/assets-home/img-subtitle/icon-math-code.jpg',
                      fit: BoxFit.cover,
                    ), 
                    )
                      
                  )
                             
                  ),
                  Container(
                    child: Text("Math Coder",style: style.textTitle,),
                  ),
                  Container(
                    child:  TextButton( 
                       onPressed: (){},                    
                       child: Icon(
                           Icons.notifications,
                           color: Colors.black,
                           size: 25,
                    ) )
                    
                    
                  
                  )
              ],
           ),
        );
    }
}