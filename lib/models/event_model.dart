import 'package:design/models/overlapping_avatar_model.dart';
import 'package:design/pages/details_page.dart';
import 'package:flutter/material.dart';

class EventModel extends StatelessWidget {
  const EventModel({super.key,
    required this.imagePath, required this.title, required this.date, required this.location, required this.isNew, required this.isFree, required this.participantCount, required this.amount, required this.participants, required this.about, required this.courseDetails,

  });

  final String imagePath;
  final String title;
  final String date;
  final String location;
  final bool isNew;
  final bool isFree;
  final String participantCount;
  final String amount;
  final int participants;
  final String about;
  final List<String> courseDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailsPage(
            imgPath: imagePath,
            title: title,
            date: date,
            location: location,
            courseDetails: courseDetails,
            participants: participants,
            amount: amount,
            about: about,
          )));
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(imagePath, width: 170, height: 150, fit: BoxFit.cover),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      if (isNew) ...[
                        Text("New | ", style: TextStyle(color: Colors.red, fontSize: 12)),
                      ],
                      Text(isFree ? "Free" : "Paid",
                          style:isFree? TextStyle(color: Colors.green, fontSize: 12):
                          TextStyle(color: Colors.red, fontSize: 12)
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.calendar_today, size: 12, color: Color(0xff2036FF)),
                      SizedBox(width: 5),
                      Text(date, style: TextStyle(fontSize: 12, color: Color(0xff2036FF))),
                    ],
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 12, color: Color(0xff014333)),
                      SizedBox(width: 5),
                      Text(location, style: TextStyle(fontSize: 12, color: Color(0xff014333))),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OverlappingAvatars(
                          imageUrls: [
                            'assets/images/e1.jpeg',
                            'assets/images/e2.jpeg',
                            'assets/images/e3.jpeg',
                            'assets/images/e4.jpeg',
                          ],
                          participantCount: participantCount
                      ),
                      SizedBox(width: 10),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 3,horizontal: 8),
                          decoration: BoxDecoration(
                            color: Color(0xff014333),
                            borderRadius: BorderRadius.circular(10)
                          ),
                            child: Text("Details", style: TextStyle(fontSize: 12,color: Colors.white))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
