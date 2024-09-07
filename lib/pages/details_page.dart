import 'package:design/models/details_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String imgPath;
  final String title;
  final String date;
  final String location;
  final int participants;
  final List<String> courseDetails;
  final String about;
  final String amount;
  const DetailsPage({super.key, required this.imgPath, required this.title, required this.date, required this.location, required this.participants, required this.courseDetails, required this.about, required this.amount});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Details', style: TextStyle(color: Colors.white)),
      ),
      body: DetailsModel(
        imgPath: imgPath,
        title: title,
        date: date,
        location: location,
        about: about,
        courseDetails: courseDetails,
        participants: participants,
        amount: amount,
      ),
    );
  }
}
