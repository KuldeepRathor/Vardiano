// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vardiano/components/simplecard.dart';
import 'package:vardiano/widgets/constants.dart';
class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  // UserModel1 userModel1 = staticUserData[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            // ClipRRect(
                            //   borderRadius: BorderRadius.circular(300),
                            //   child: Image(
                            //     image: NetworkImage(
                            //       userModel1.imageUrl.toString(),
                            //     ),
                            //     width: 100,
                            //     height: 100,
                            //     fit: BoxFit.cover,
                            //   ),
                            // ),
                            Positioned(
                              bottom: 8,
                              right: 1,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Kuldeep',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),
                        SizedBox(
                          width: getSize(context).width * 0.7,
                          child: Text(
                            "Expert",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        SizedBox(
                          width: getSize(context).width * 0.7,
                          child: Text(
                            "Dummy text",
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      child: Text(
                        'Edit',
                        style: TextStyle(
                          color: Color(0xffE8547C),
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getSize(context).height * 0.04),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.grey.withOpacity(0.2)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyInfo(subText: "Work At:  ", text: "Google"),
                          SizedBox(height: 10),
                          MyInfo(subText: "Followed by:  ", text: "97"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyInfo(subText: "Birthday:  ", text: "07/07/2007"),
                          SizedBox(height: 10),
                          MyInfo(
                            subText: "Live in:  ",
                            text: "Maharashtra, India",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.grey.withOpacity(0.2)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 17),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'My feeds',
                            style: TextStyle(
                              color: Color(0xff818496),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          // Icon(
                          //   Icons.keyboard_arrow_right,
                          //   color: Color(0xff818496),
                          // ),
                        ],
                      ),
                      SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SimpleCard(
                            img: 'assets/images/profile/followers.png',
                            value: '97',
                            subValue: 'Followers',
                            imgw: 50,
                            imgh: 40,
                            imgColor: Colors.black.withOpacity(0.8),
                          ),
                          VerticalLine(),
                          SimpleCard(
                            img: 'assets/images/profile/posts.png',
                            value: '6',
                            subValue: 'Total Posts',
                            imgw: 40,
                            imgh: 40,
                            imgColor: Colors.black.withOpacity(0.8),
                          ),
                          VerticalLine(),

                          SimpleCard(
                            img: 'assets/images/profile/comments.png',
                            value: '17',
                            subValue: 'Comments',
                            imgw: 40,
                            imgh: 40,
                            imgColor: Colors.black.withOpacity(0.8),
                          ),
                          VerticalLine(),
                          SimpleCard(
                            img: 'assets/images/profile/likes.png',
                            value: '103',
                            subValue: 'Likes',
                            imgw: 30,
                            imgh: 40,
                            imgColor: Colors.black.withOpacity(0.8),
                          ),
                        ],
                      ),
                      SizedBox(height: 18),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => MyPostScreen(),
                  //   ),
                  // );
                },
                child: MyContainer(text: 'My Posts'),
              ),
              SizedBox(height: 16),
              InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => InterestField(),
                    //   ),
                    // );
                  },
                  child: MyContainer(text: 'My Interest')),
              SizedBox(height: 16),
              InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => MyFollowingScreen(),
                    //   ),
                    // );
                  },
                  child: MyContainer(text: 'My Following')),
              SizedBox(height: 16),
              InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => MyFollowerScreen(),
                    //   ),
                    // );
                  },
                  child: MyContainer(text: 'My Followers')),
              SizedBox(height: 16),
              InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => MyBookmarkScreen(),
                    //   ),
                    // );
                  },
                  child: MyContainer(text: 'My Bookmarks')),
              SizedBox(height: 16),
              InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => MyLikeScreen(),
                    //   ),
                    // );
                  },
                  child: MyContainer(text: 'My Likes')),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Color(0xff818496),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: Color(0xff818496),
            ),
          ],
        ),
      ),
    );
  }
}

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
    required this.subText,
    required this.text,
  }) : super(key: key);

  final String subText, text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          subText,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class VerticalLine extends StatelessWidget {
  const VerticalLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      width: 2,
      color: Color(0xff707070).withOpacity(0.23),
    );
  }
}
