

import 'package:flutter/material.dart';

class style {
      static const TextStyle textTitle = TextStyle(
        decoration: TextDecoration.none,
          fontFamily: 'Orbitron',        // Sử dụng font hiện đại
           fontSize: 22,                  // Cỡ chữ lớn
          fontWeight: FontWeight.bold,  // Đậm
          color: Color.fromARGB(255, 255, 255, 255),     // Màu nổi bật
          letterSpacing: 0,           // Giãn chữ
    shadows: [
      Shadow(
        offset: Offset(2, 2),
        blurRadius: 4.0,
        color: Colors.black26,
      )
    ]
      );
      
}