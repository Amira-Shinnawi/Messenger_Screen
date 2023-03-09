import 'package:flutter/material.dart';

class Messenger extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 15.0,
        title: Row(
          children: [
            IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 20.0,
                child: Icon(
                  Icons.menu,
                  size: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(width: 5.0,),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
              backgroundColor: Colors.grey[300],
              radius: 15.0,
              child: Icon(
                Icons.camera_alt,
                size: 15.0,
                color: Colors.black,
              ),
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
              backgroundColor: Colors.grey[300],
              radius: 15.0,
              child: Icon(
                Icons.edit,
                size: 15.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[300],
                      ),
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5.0),
                          Text(
                              'Search',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      height: 100.0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index)=>buildStoryItem(),
                        separatorBuilder:(context,index)=>SizedBox(
                          width: 20.0,
                        ) ,
                        itemCount: 10,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context,index)=>buildChatItem(),
                        separatorBuilder: (context,index)=>SizedBox(
                          height: 20.0,
                        ),
                        itemCount: 15),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  MaterialButton(
                    onPressed: (){},
                    child: Column(
                      children: [
                        Stack(
                          alignment: FractionalOffset(1.5,-0.4),
                          children:[
                          Icon(Icons.chat_bubble_outlined,color: Colors.blue,),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3.0,
                                end: 3.0,
                              ),
                              child: CircleAvatar(
                                radius: 5.5,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3.0,
                                end: 3.0,
                              ),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                        ],
                        ),
                        SizedBox(height: 6.0,),
                        Text(
                          'Chats',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  MaterialButton(
                    onPressed: (){},
                    child: Column(
                      children: [
                        Icon(Icons.videocam_rounded,size:25.0,color: Colors.grey[500],),
                        SizedBox(height: 6.0,),
                        Text(
                          'Calls',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  MaterialButton(
                    onPressed: (){},
                    child: Column(
                      children: [
                        Icon(Icons.people_alt,color: Colors.grey[500],),
                        SizedBox(height: 6.0,),
                        Text(
                          'People',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  MaterialButton(
                    onPressed: (){},
                    child: Column(
                      children: [
                        Icon(Icons.web_stories,color: Colors.grey[500],),
                        SizedBox(height: 6.0,),
                        Text(
                          'Stories',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget buildStoryItem()=>Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://images2.minutemediacdn.com/image/fetch/w_2000,h_2000,c_fit/https%3A%2F%2Ftherealchamps.com%2Fwp-content%2Fuploads%2Fgetty-images%2F2018%2F08%2F962792886.jpeg'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 7.5,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          'Cristiano Ronaldo',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://images2.minutemediacdn.com/image/fetch/w_2000,h_2000,c_fit/https%3A%2F%2Ftherealchamps.com%2Fwp-content%2Fuploads%2Fgetty-images%2F2018%2F08%2F962792886.jpeg'),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.5,
              backgroundColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cristiano Ronaldo',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Hello my name is : Cristiano Ronaldo',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: Container(
                    width: 3.5,
                    height: 3.5,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '6:26 PM',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}