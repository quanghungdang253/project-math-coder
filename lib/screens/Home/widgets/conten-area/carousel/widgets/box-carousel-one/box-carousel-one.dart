
import 'package:flutter/material.dart';
import './box-carousel-style.dart';
import './box-carousel-data.dart';
import '../../../../../../../widgets/slide-animation-image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class boxCarouselData extends StatelessWidget {

          @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Container(
        width: 350.w,
        child: Flex(
          direction: Axis.vertical,
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [const Color.fromARGB(255, 24, 180, 252), const Color.fromARGB(200, 255, 255, 255)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  )
              ),
              width: double.infinity,
              height: 120.h,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 5.h),
                    child: Text("Sản phẩm",style: style.fontTextTitle,),
                  ),
                  Container(
                     width: 200.w,
                      child: Text("Ứng dụng công nghệ vào học và giảng dạy", 
                      textAlign: TextAlign.center,
                      style: style.fontTextContent,
                    ),
                  )
                ],
              ), 
            ),
              slideAnimationImage(
                direction: true,
                height: 150.h,
                width: 350.w,
                color: Colors.white,
                backgroundColor: Colors.white10,
                image: dataCarousel.data,
                onTap: (){}
              ),
              Container(
                width: double.infinity,
                  child: Column(
                    children: [
                        Container(
                           margin: EdgeInsets.only(bottom: 10),
                            width: 300.w,
                            child: Text("Dành cho học sinh từ lớp 1 - lớp 12", style: style.fontTextTitle, textAlign: TextAlign.center,),
                        ),
                        Container(
                           margin: EdgeInsets.only(bottom: 30),
                            child: Text("Mathcoder.vn học mọi lúc mọi nơi", style: style.fontTextContent),
                        ),
                        SizedBox(
                          height: 200.h,
                          width: 300.w,
                          child:   Stack(
                          children: [
                                Container(
                                child: Image.asset(
                                    "assets/assets-home/carousel/macbook.png"
                                ),
                              ),                         
                                Positioned(        
                                  top: 10,
                                  left: 50,     
                                      child: SizedBox(
                                          width: 210.w,
                                          height: 150.h,
                                          child:Image.asset(
                                                "assets/assets-home/carousel/video-trang-chu.gif",
                                           fit: BoxFit.contain,
                                  ) ,
                                )                                          
                              ) ,                                               
                          ],
                        )),    
                        Container(                    
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                               boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                    blurRadius: 1,
                                    offset: Offset(0, 5)
                                  )
                               ]
                          ),
                          width: double.infinity,
                            child: SizedBox(
                                  width: double.infinity,
                                  child: Image.asset("assets/assets-home/carousel/noidung.png"),
                            ),                       
                        ),
                        Container(
                          decoration: BoxDecoration(
                               gradient: LinearGradient(
                                    colors: [const Color.fromARGB(255, 8, 0, 255), Colors.white] ,
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,                                 
                               )
                          ),
                          padding: EdgeInsets.all(20),
                          height: 600.h,
                      
                            child: Center(
                                  child: Column(
                                      children: [
                                         Container(
                                          margin: EdgeInsets.only(bottom: 10),
                                            child: Text("Ứng dụng công nghệ", style: style.fontTextTitle_two,),
                                         ),
                                         Container(
                                           margin: EdgeInsets.only(bottom: 10),
                                             child: Text("Trí tuệ nhân tạo ", style: style.fontTextContent_two,),
                                         ),
                                         Container(
                                           child: Text("Edmicro tiên phong trong ứng dụng trí tuệ nhân tạo để tự động hóa việc chấm, chữa, gợi ý cải thiện bài nói và viết môn tiếng Anh, giúp học sinh có thể luyện tập thường xuyên hơn với chi phí thấp hơn nhiều phương pháp truyền thống.", style: style.content,),
                                         ),
                                         Container(
                                        
                                          padding: EdgeInsets.all(10),
                                        margin: EdgeInsets.only(top: 50),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                              )
                                        ),
                                          child: Stack(
                                            children: [
                                                Container(
                                                  child: Image.asset("assets/assets-home/carousel/macbook.png",
                                                  fit: BoxFit.cover,
                                                  ),
                                                ),

                                              Positioned(
                                                left: 40,
                                                top: 20,
                                                child:SizedBox(
                                                width: 210.w,
                                                child: Image.asset(
                                                "assets/assets-home/carousel/img-al.jpg",
                                                fit: BoxFit.cover,
                                              ),
                                          ) 
                                              )
                                        
                                            ],
                                          )
                                          
                                        ,
                                         )
                                      ],
                                  ) ,
                            ),
                        )                                                                       
                    ],
                  ),
              )
          ],
        ),
      );
  }
}