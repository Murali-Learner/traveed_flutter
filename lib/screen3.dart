import 'package:flutter/material.dart';
import 'package:virat_task/widgets/bottomBar.dart';
import 'package:virat_task/widgets/liamInfo.dart';
import 'package:virat_task/widgets/tadaInfo.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    TextEditingController _commentController = TextEditingController();
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: _height * 0.055, left: _height * 0.008),
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
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    height: _height * 0.81,
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
                        TadaInfo(
                            height: _height,
                            width: _width,
                            imgName: "images/blueCircle.png",
                            name: "Tada",
                            description: "Would definitely watch it!"),
                        SizedBox(
                          height: _height * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: _height * 0.07, top: _width * 0.013),
                          child: LiamInfo(
                              height: _height,
                              width: _width,
                              imgName: "images/darkBlue.png",
                              name: "Liam",
                              description: "Me too!"),
                        ),
                        SizedBox(
                          height: _height * 0.02,
                        ),
                        LiamInfo(
                            height: _height,
                            width: _width,
                            imgName: "images/purpleCircle.png",
                            name: "Amy",
                            description: "Nice!"),
                        SizedBox(
                          height: _height * 0.03,
                        ),
                        LiamInfo(
                            height: _height,
                            width: _width,
                            imgName: "images/yellowCircle.png",
                            name: "Liam",
                            description: "Good!"),
                        SizedBox(
                          height: _height * 0.03,
                        ),
                        LiamInfo(
                            height: _height,
                            width: _width,
                            imgName: "images/blackCircle.png",
                            name: "Liam",
                            description: "Will try."),
                        SizedBox(
                          height: _height * 0.03,
                        ),
                        LiamInfo(
                            height: _height,
                            width: _width,
                            imgName: "images/darkBlue.png",
                            name: "Lissa",
                            description: "Average Movie!"),
                        SizedBox(height: _height * 0.001),
                        Divider(
                          thickness: 1,
                        ),
                        Container(
                          alignment: Alignment.center,
                          // color: Colors.black,
                          padding: EdgeInsets.only(
                              top: _height * 0.003,
                              bottom: _height * 0.001,
                              right: 0,
                              left: 3),
                          child: TextField(
                            controller: _commentController,
                            decoration: InputDecoration(
                                hintText: "Add a comment  ",
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                  BottomBar(height: _height)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
