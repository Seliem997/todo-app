import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String img =
        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(img),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chat',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.grey[800],
              child: Icon(
                Icons.camera_alt,
                size: 18,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.grey[800],
                child: Icon(
                  Icons.edit,
                  size: 18,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey[900],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 105,
                child: ListView.separated(
                    itemBuilder: (context, index) => buildStoryItem(img),
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 15,
                      );
                    },
                    itemCount: 8,
                scrollDirection: Axis.horizontal,),
              ),
              SizedBox(
                height: 15,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics( ),
                shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(img),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 15,
                      ),
                  itemCount: 8),

/*            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(img),
                                radius: 30,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,

                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Mostafa Seliem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(img),
                                radius: 30,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,

                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Mostafa Seliem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(img),
                                radius: 30,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,

                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Mostafa Seliem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(img),
                                radius: 30,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,

                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Mostafa Seliem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(img),
                                radius: 30,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,

                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Mostafa Seliem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(img),
                                radius: 30,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,

                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Mostafa Seliem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(img),
                                radius: 30,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,

                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Mostafa Seliem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(img),
                                radius: 30,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,

                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Mostafa Seliem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(img),
                                radius: 30,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,

                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Mostafa Seliem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(img),
                                radius: 30,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,

                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Mostafa Seliem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),

                  ],
                ),
              ),
              SizedBox(height: 15,),*/
              // Expanded(
              //   child: SingleChildScrollView(
              //     child: Column(
              //       children: [
              //         buildChatItem(img),
              //         SizedBox(height: 10,),
              //         buildChatItem(img),
              //         SizedBox(height: 10,),
              //         buildChatItem(img),
              //         SizedBox(height: 10,),
              //         buildChatItem(img),
              //         SizedBox(height: 10,),
              //         buildChatItem(img),
              //         SizedBox(height: 10,),
              //         buildChatItem(img),
              //         SizedBox(height: 10,),
              //         buildChatItem(img),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildChatItem(String img) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(img),
              radius: 30,
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 8,
            )
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mostafa Seliem',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'data of Mostafa Seliem Messeges',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                    '20:37',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget buildStoryItem(String img) => Container(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(img),
                  radius: 30,
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 8,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Mostafa Seliem',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
}
