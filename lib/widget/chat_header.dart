import 'package:flutter/material.dart';

Widget chatAvatar(String image ){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        
        children : [
          Container(
            height: 60,
            width: 60,
            child: CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(image)
            ),
          ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white,width: 3)
            ),
          ),
        )
        
        ]
        
      ),
    );
  }
