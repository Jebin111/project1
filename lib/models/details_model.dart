import 'package:design/models/overlapping_avatar_model.dart';
import 'package:flutter/material.dart';

class DetailsModel extends StatelessWidget {
  const DetailsModel({super.key, required this.imgPath, required this.title, required this.about, required this.courseDetails, required this.participants, required this.date, required this.location, required this.amount});

  final String imgPath;
  final String title;
  final String about;
  final List<String> courseDetails;
  final int participants;
  final String date;
  final String location;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('About:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(
              about,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            if(courseDetails.length>0)
              Text('This course includes:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            for(int i=0;i<courseDetails.length;i++)
              Text(courseDetails[i]),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                OverlappingAvatars(
                    imageUrls: [
                      'assets/images/appbar.jpeg',
                      'assets/images/bd2.jpeg',
                      'assets/images/e1.jpeg',
                      'assets/images/e2.jpeg',
                      'assets/images/e3.jpeg',
                      'assets/images/e4.jpeg',
                    ],
                    participantCount: participants.toString()+'+'),
                Spacer(),
                Column(
                  children: [
                    Text('Maximum', style: TextStyle(color: Color(0xffD26704))),
                    Text(participants.toString()+' Participants',style: TextStyle(

                    ),)
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(imgPath, width: double.infinity, height: 180, fit: BoxFit.cover),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_today, color: Colors.green),
                        SizedBox(width: 5),
                        Text(date),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.green),
                        SizedBox(width: 5),
                        Text(location),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.monetization_on, color:amount=='Free'? Colors.green:Colors.red),
                        SizedBox(width: 5),
                        Text(amount, style: TextStyle(color:amount=='Free'? Colors.green:Colors.red)),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                          imgPath,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff0177B9),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      ),
                      onPressed: () {
                        // Handle button press
                      },
                      child: Text('BOOK NOW', style: TextStyle(fontSize: 10, color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
