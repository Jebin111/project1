import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../pages/details_page.dart';
import '../values/values.dart';

class RecentEvent extends StatelessWidget {
  final String title,date,location,amount,about,imgPath,bgImgPath;
  final int participants;

  const RecentEvent({super.key, required this.imgPath, required this.title, required this.date, required this.location, required this.amount, required this.about, required this.participants, required this.bgImgPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=> DetailsPage(
          imgPath: imgPath,
          title: title,
          date: date,
          location: location,
          courseDetails: const [],
          participants: participants,
          amount: amount,
          about: about,
        )));
      },
      child: Container(
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            colorFilter: const ColorFilter.srgbToLinearGamma(),
            image: AssetImage(bgImgPath), // Use your event background image
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(imgPath, width: 160, height: 170, fit: BoxFit.cover),
            ),
            SizedBox(
              width: width-200,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      maxLines: 3,
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18, fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.calendar_today, color: Colors.greenAccent),
                        const SizedBox(width: 5),
                        Text(date,
                            style: const TextStyle(color: Colors.greenAccent,fontSize: 12)),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: Colors.greenAccent),
                        const SizedBox(width: 5),
                        Text(location,
                            style: const TextStyle(color: Color(0xff20F2FF),fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
