import 'package:flutter/material.dart';
import 'package:virat_task/screen3.dart';
import 'package:virat_task/widgets/bottomBar.dart';
import 'package:virat_task/widgets/commentFeild.dart';
import 'package:virat_task/widgets/liamInfo.dart';
import 'package:virat_task/widgets/movieInfo.dart';
import 'package:virat_task/widgets/tadaInfo.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    TextEditingController _commentController = TextEditingController();

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: _height * 0.06, left: _height * 0.008),
        height: _height,
        width: _width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_sharp),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: _height * 0.82,
                width: _width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black.withOpacity(0.66),
                      blurRadius: 2.0,
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: _height * 0.39,
                      width: _width * 0.9,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "images/yellowCircle.png",
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(
                                height: _height * 0.003,
                                width: _width * 0.03,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Roy",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("22 September 2021"),
                                ],
                              ),
                              SizedBox(
                                width: _width * 0.32,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert),
                              )
                            ],
                          ),
                          SizedBox(
                            height: _height * 0.017,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("images/image1.png"),
                          ),
                          SizedBox(
                            height: _height * 0.01,
                          ),
                          Text(
                            'A collision of sci-fi, drama and horror, "Before I Fall" earns points for ambition. ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: _height * 0.01,
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '10 Comments',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          MovieInfo(
                            likes: '6 likes',
                            rating: '4.1',
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: _height * 0.03, top: 0, right: 0, bottom: 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Screen3();
                              }));
                            },
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Comments",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: _height * 0.007,
                          ),
                          TadaInfo(
                            height: _height,
                            width: _width,
                            description: '',
                            imgName: '',
                            name: '',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: _height * 0.07, top: _width * 0.013),
                      child: LiamInfo(
                        height: _height,
                        width: _width,
                        imgName: "images/blueCircle.png",
                        description: "Me too!",
                        name: "Liam",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: _height * 0.03, top: _width * 0.016),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LiamInfo(
                            width: _width,
                            height: _height,
                            imgName: "images/blackCircle.png",
                            description: "Nice!",
                            name: 'Amy',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: _height * 0.01),
                    Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: _height * 0.01),
                      child: CommentFeild(
                          height: _height,
                          commentController: _commentController),
                    ),
                  ],
                ),
              ),
              BottomBar(height: _height),
            ],
          ),
        ),
      ),
    );
  }
}
