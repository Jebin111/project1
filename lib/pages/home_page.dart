import 'package:design/models/event_model.dart';
import 'package:design/values/colour.dart';
import 'package:flutter/material.dart';

import 'details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: bg,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/appbar.jpeg'), // Use your profile image
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Purnendu Bikash', style: TextStyle(color: Colors.white)),
                    Text('21MCA2473,',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                    Text('Figma St., Android Colony',
                        style: TextStyle(color: Colors.white, fontSize: 12))
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,)
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.yellow),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children:[ Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Find & Save the best\nevent around you",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),),
              ),
              const SizedBox(height: 10),
              TextField(
                style: const TextStyle(
                  height: 1
                ),
              decoration: InputDecoration(
              hintText: 'Search for events...',
              suffixIcon: const Icon(Icons.search,color: Color(0xff02AB13),size: 30),
              filled: true,
              fillColor: const Color(0xffD9D9D9),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Event",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),),
                  Text("See all",style: TextStyle(
                      color: Color(0xff6CFF7B),
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  ),)
                ],
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const DetailsPage(
                    imgPath: 'assets/images/bg2.jpeg',
                    title: 'The Greatest Party Ever with DJ Snake & Selena Gomez 🇮🇳',
                    date: '19 Dec 2022 - 20:00',
                    location: '233 API, Kotlin Colony,\nJavaScript UseState',
                    courseDetails: [],
                    participants: 99,
                    amount: '₹99,990.00',
                    about: 'To take care of the party aspect, there are quite a few international artists lined up to play in India till January and one of them is the world-renowned French EDM artist DJ Snake with Disney wunderkind turned pop-star, Selena Gomez',
                  )));
                },
                child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      colorFilter: ColorFilter.srgbToLinearGamma(),
                      image: AssetImage('assets/images/bg1.jpeg'), // Use your event background image
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/images/bg2.jpeg', width: 160, height: 170, fit: BoxFit.cover),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'The Greatest Party\nEver with DJ Snake &\nSelena Gomez',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18, fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.calendar_today, color: Colors.greenAccent),
                                SizedBox(width: 5),
                                Text('19 Dec 2022 - 20:00', style: TextStyle(color: Colors.greenAccent)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on, color: Colors.greenAccent),
                                SizedBox(width: 5),
                                Text('33 API, Kotlin Colony,\nJavaScript UseState',
                                    style: TextStyle(color: Color(0xff20F2FF))),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Event Categories",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  ),),
                  Text("See all",style: TextStyle(
                      color: Color(0xff6CFF7B),
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  ),),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  event("Productivity", const AssetImage('assets/images/e1.jpeg')),
                  event("Project", const AssetImage('assets/images/e2.jpeg')),
                  event("Travel", const AssetImage('assets/images/e3.jpeg')),
                  event("Party", const AssetImage('assets/images/e4.jpeg'))
                ],
              ),

        ],
          ),
        ),
        _buildDraggableBottomSheet(context)],
      ),bottomNavigationBar: _buildBottomNavBar(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: const BorderSide(width: 10,color: Color(0xff0D2327))
        ),
        backgroundColor: Colors.green,
        child: const Icon(Icons.add,color: Color(0xffFAFF00),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget event(String s,AssetImage i){
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: i,
        ),
        const SizedBox(height: 10),
        Text(s,style: const TextStyle(
          color: Colors.white,

        ),)
      ],
    );
  }





  Widget _buildDraggableBottomSheet(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.18,
      minChildSize: 0.18,
      maxChildSize: 0.9,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
              ),
            ],
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 6,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[300],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text("Events For You",style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),),
                      Container(
                        height: 4,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffF4CE05),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const EventModel(
                        imagePath: 'assets/images/bg2.jpeg',
                        isFree: true,
                        isNew: true,
                        title: 'Android Dev 100 Days Bootcamp | Kotlin',
                        date: '15 Mar 2023 - 18:00',
                        location: '2023 Flutter Lane',
                        participantCount: '40+',
                        participants: 40,
                        amount: 'Free',
                        about: 'Learn Android 13 app development and become a professional Android developer, go freelance, or build your dream app idea.',
                        courseDetails: [
                          '• 5 articles',
                          '• 12 downloadable resources',
                          '• 10 coding exercises',
                          '• Full lifetime access',
                          '• Access on mobile and TV',
                          '• Certificate of completion'
                        ],
                      ),
                      const EventModel(
                        imagePath: 'assets/images/bg1.jpeg',
                        isFree: false,
                        isNew: true,
                        title: 'Masters in Full Stack Web Development | Java, JS',
                        date: '21 Mar 2023 - 17:00',
                        location: 'ES6 React St., JS Colony',
                        participantCount: '64+',
                        participants: 64,
                        amount: '₹10,000.00',
                        about: 'Master Full Stack Web Development skills using JavaScript with - React, Node, Express and Mongo Database (MERN) with Java.',
                        courseDetails: [
                          '• 27 hours on-demand video',
                          '• 28 articles',
                          '• 28 downloadable resources',
                          '• Full lifetime access',
                          '• Access on mobile and TV',
                          '• Certificate of completion'
                        ],
                      ),
                      const EventModel(
                        imagePath: 'assets/images/bg2.jpeg',
                        isFree: true,
                        isNew: false,
                        title: 'Spring MVC Challenge with Git & GitHub',
                        date: '1 Apr 2023 - 20:00',
                        location: '2473 Git Road, MVC State',
                        participantCount: '23+',
                        participants: 23,
                        amount: 'Free',
                        about: 'You will Build a Todo Management Application STEP BY STEP in 25 Steps using Spring MVC, Bootstrap, Maven and Eclipse.',
                        courseDetails: [
                          '• 6 hours on-demand video',
                          '• 5 articles',
                          '• Git & GitHub',
                          '• Access on mobile and TV',
                          '• Certificate of completion',
                          '• Closed captions'
                        ],
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff01DB17),
                            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                          ),
                          child: const Text("View All",style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          ),),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavBarIcon(context, Icons.home),
          _buildNavBarIcon(context, Icons.calendar_today),
          const SizedBox(height: 1),
          _buildNavBarIcon(context, Icons.bookmark),
          _buildNavBarIcon(context, Icons.history),
        ],
      ),
    );
  }

  Widget _buildNavBarIcon(BuildContext context, IconData icon) {
    return IconButton(
      icon: Icon(icon, color: Colors.green),
      onPressed: () {},
    );
  }

}
