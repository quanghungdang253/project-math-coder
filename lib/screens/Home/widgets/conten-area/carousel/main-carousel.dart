

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../widgets/slide-animation-image.dart';
import './carousel-data.dart';
import './widgets/box-carousel-one/box-carousel-one.dart';
import './widgets/box-carousel-two/box-carousel-two.dart';
import './widgets/box-carousel-three/box-carousel-three.dart';
class carouselWidget extends StatelessWidget  {

        @override 

        Widget build(BuildContext context){
              return Container(
                   width: 350.w,
                    child: 
                      Flex(
                          direction:Axis.vertical,
                          children: [
                              boxCarouselData(),
                              boxCarouseTwo(),
                              boxCarouseThree()
                          ],
                     )
                   ,
              );
        }
}