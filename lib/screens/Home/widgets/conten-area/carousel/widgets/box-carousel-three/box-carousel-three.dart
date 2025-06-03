
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './box-carousel-three-style.dart';
class boxCarouseThree extends StatefulWidget {

    @override
    _stateBoxCarouseThree createState() => _stateBoxCarouseThree();
}

class _stateBoxCarouseThree extends State<boxCarouseThree> {
      Widget build(BuildContext context) {
            return Container(
              width: 350.w,
              height: 300.h,
       
                  child: Material(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10)
                    ),
                    elevation: 10,
                    child:Column(
                    children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text("Đăng ký ngay", style: style.textstyle),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: TextButton(
                            onPressed: (){},
                            child: Image.asset("assets/assets-home/carousel/tieuhoc.png")
                          ),                      
                        ),
                            Container(
                            child: TextButton(
                            onPressed: (){},
                            child: Image.asset("assets/assets-home/carousel/trunghoc.png")
                          ),
                        )
                    ],
                  ), 
                  )
                  
             
            );
      }
}