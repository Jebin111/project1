import 'package:flutter/material.dart';

class OverlappingAvatars extends StatelessWidget {
  final List<String> imageUrls;
  final String participantCount;

  OverlappingAvatars({required this.imageUrls, required this.participantCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for(int i=0;i<imageUrls.length; i++)
          Align(
            widthFactor: 0.4,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 13.5,
                backgroundImage: AssetImage(imageUrls[i]), // Replace with your image source
              ),
            ),
          ),
        Align(
          widthFactor: 0.4,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.purple,
            child: Text(
              participantCount,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
    // return Stack(
    //   children: [
    //     for (int i = 0; i < imageUrls.length; i++)
    //       Positioned(
    //         left: i * 10.0,
    //         child: CircleAvatar(
    //           radius: 15,
    //           backgroundColor: Colors.black,
    //           child: CircleAvatar(
    //             radius: 13,
    //             backgroundImage: AssetImage(imageUrls[i]), // Replace with your image source
    //           ),
    //         ),
    //       ),
    //     Positioned(
    //       left: imageUrls.length * 10.0,
    //       child: CircleAvatar(
    //         radius: 15,
    //         backgroundColor: Colors.purple,
    //         child: Text(
    //           participantCount,
    //           style: TextStyle(
    //             color: Colors.white,
    //             fontSize: 14,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
