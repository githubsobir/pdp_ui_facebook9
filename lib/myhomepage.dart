import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  static final String id = 'MyHomePage';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          'facebook',
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.photo_camera,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          // ##
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 110,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 1, 2, 1),
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/user_5.jpeg'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 46,
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border:
                                Border.all(color: Colors.grey[800], width: 1),
                          ),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'What\'s on your mind?',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Expanded(
                              child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.video_call,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                'Live',
                                style: TextStyle(
                                    color: Colors.grey[700], fontSize: 14),
                              ),
                            ],
                          )),
                          VerticalDivider(
                            color: Colors.grey[500],
                            thickness: 1,
                            endIndent: 10,
                            indent: 10,
                          ),
                          Expanded(
                              child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.photo,
                                  color: Colors.green,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                'Photo',
                                style: TextStyle(
                                    color: Colors.grey[700], fontSize: 14),
                              ),
                            ],
                          )),
                          VerticalDivider(
                            color: Colors.grey[500],
                            thickness: 1,
                            endIndent: 10,
                            indent: 10,
                          ),
                          Expanded(
                              child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                'Check in',
                                style: TextStyle(
                                    color: Colors.grey[700], fontSize: 14),
                              ),
                            ],
                          )),
                        ],
                      )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 180,
            padding: EdgeInsets.symmetric(horizontal: 4),
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeStory(
                  stroyImage: 'assets/images/story_5.jpeg',
                  stroyUserImage: 'assets/images/user_5.jpeg',
                  stroyName: 'User Five',
                ),
                makeStory(
                  stroyImage: 'assets/images/story_4.jpeg',
                  stroyUserImage: 'assets/images/user_4.jpeg',
                  stroyName: 'User Four',
                ),
                makeStory(
                  stroyImage: 'assets/images/story_3.jpeg',
                  stroyUserImage: 'assets/images/user_3.jpeg',
                  stroyName: 'User Three',
                ),
                makeStory(
                  stroyImage: 'assets/images/story_2.jpeg',
                  stroyUserImage: 'assets/images/user_2.jpeg',
                  stroyName: 'User Two',
                ),
                makeStory(
                  stroyImage: 'assets/images/story_1.jpeg',
                  stroyUserImage: 'assets/images/user_1.jpeg',
                  stroyName: 'User One',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          makeFeed(
            userName: 'User two',
            userImage: 'assets/images/story_1.jpeg',
            feedTime: '1 hr ago',
            feedText:
                'All the Loren Ipsum generators on the Internet tend to repeat predefind',
            feedImage1: 'assets/images/story_2.jpeg',
            feedImage2: 'assets/images/story_1.jpeg',
          ),
          makeFeed(
            userName: 'User One',
            userImage: 'assets/images/user_1.jpeg',
            feedTime: '1 hr ago',
            feedText:
                'All the Loren Ipsum generators on the Internet tend to repeat predefind',
            feedImage1: 'assets/images/story_1.jpeg',
            feedImage2: 'assets/images/story_4.jpeg',
          ),
          makeFeed(
            userName: 'User two',
            userImage: 'assets/images/user_5.jpeg',
            feedTime: '1 hr ago',
            feedText:
                'All the Loren Ipsum generators on the Internet tend to repeat predefind',
            feedImage1: 'assets/images/story_3.jpeg',
            feedImage2: 'assets/images/story_2.jpeg',
          ),
        ],
      ),
    );
  }

  Widget makeFeed(
      {userName, userImage, feedTime, feedText, feedImage1, feedImage2}) {
    return Container(
      height: 480,
      margin: EdgeInsets.symmetric(vertical: 2),
      color: Colors.black,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(userImage),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                    Text(
                      feedTime,
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.more_horiz,
                          color: Colors.grey[500],
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(15, 1, 15, 10),
              child: Text(
                feedText,
                style: TextStyle(color: Colors.grey[600], fontSize: 15),
              )),
          Container(
            margin: EdgeInsets.all(1),
            child: Row(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1 / 1.3,
                    child: Image(
                      image: AssetImage(feedImage1),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1 / 1.3,
                    child: Image(
                      image: AssetImage(feedImage2),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    makeLake(),
                    Transform.translate(
                      offset: Offset(-5, 0),
                      child: makeLove(),
                    ),
                    Text(
                      '2.5K',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '400 Comments',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
               Container(
                 margin: EdgeInsets.symmetric(horizontal: 10),
                 child:   Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Expanded(
                         child: Row(

                           children: [

                             Icon(
                               Icons.thumb_up_rounded,
                               size: 18,
                               color: Colors.blue,
                             ),
                             SizedBox(
                               width: 5,
                             ),
                             Text(
                               'Like',
                               style: TextStyle(color: Colors.blue),
                             )
                           ],
                         )),
                     Expanded(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Icon(
                               Icons.textsms_outlined,
                               size: 18,
                               color: Colors.grey,
                             ),
                             SizedBox(
                               width: 5,
                             ),
                             Text(
                               'Comment',
                               style: TextStyle(color: Colors.grey),
                             )
                           ],
                         )),
                     Expanded(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,

                           children: [
                             Icon(
                               Icons.share,
                               size: 18,
                               color: Colors.grey,
                             ),
                             SizedBox(
                               width: 5,
                             ),
                             Text(
                               'Share',
                               style: TextStyle(color: Colors.grey),
                             )
                           ],
                         )),
                   ],
                 ),
               )

              ],
            ),
          )
        ],
      ),
    );
  }

  Widget makeLake() {
    return Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 1),
        ),
        child: Center(
            child: Icon(
          Icons.thumb_up_rounded,
          color: Colors.white,
          size: 12,
        )));
  }

  Widget makeLove() {
    return Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.white, width: 1),
          shape: BoxShape.circle,
        ),
        child: Center(
            child: Icon(
          Icons.favorite_outlined,
          color: Colors.white,
          size: 12,
        )));
  }

  Widget makeStory(
      {String stroyImage, String stroyUserImage, String stroyName}) {
    return AspectRatio(
        aspectRatio: 1.3 / 2,
        child: Container(
          margin: EdgeInsets.fromLTRB(5, 8, 5, 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.blue,
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                offset: Offset(1, 1),
                blurRadius: 1,
              ),
            ],
            image: DecorationImage(
                image: AssetImage(stroyImage), fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.2),
              ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 1.5),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(stroyUserImage),
                      )),
                ),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              stroyName,
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ))),
              ],
            ),
          ),
        ));
  }
}
