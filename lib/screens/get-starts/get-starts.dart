import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import './animation-text.dart';
import './get-start-style.dart';
import '../../widgets/customs-button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class GetStart extends StatelessWidget {

        @override

        Widget build(BuildContext context){
                return Container(
                     decoration: BoxDecoration(
                       image: DecorationImage(
                        image: AssetImage(
                          "assets/assets-get-start/img-background.jpg",   
                        ),
                        fit: BoxFit.contain
                       )
                     ),
                    child: Column(
                       children: [
                            Container(
                              height: 300,
                             margin: EdgeInsets.only(top: 100),
                              child: Opacity(
                                opacity: 1,
                                child:Image.asset(
                                  "assets/assets-home/img-subtitle/icon-math-code.jpg",
                                  fit: BoxFit.cover,
                              ),
                              )
                            ),
                            Container(
                              child: AnimatedTextWords(),
                            ),
                            Positioned(
                              top: 50,
                              child: Container(
                                margin: EdgeInsets.only(top: 40),
                                child: CustomButton(
                                  borderRadius: 20,
                                  backgroundColor: Colors.red,
                                  width: 250.w,
                                   onTap: (){
                                      context.go("/Home");
                                   },
                                   child: Text("Get starts",
                                 style: style.styleBtn)
                                )
                                
                                
                               
                            )
                            )
                      
                       ],
                    ),
                );
        }
}