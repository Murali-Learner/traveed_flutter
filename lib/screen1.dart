import 'package:flutter/material.dart';
import 'package:virat_task/screen2.dart';
import 'package:virat_task/widgets/movieDescript.dart';
import 'package:virat_task/widgets/movieInfo.dart';
import 'package:virat_task/widgets/roiInfo.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: _height * 0.06),
        height: _height,
        width: _width,
        child: Center(
          child: Column(
            children: [
              Divider(
                thickness: 4,
              ),
              Container(
                height: _height * 0.39,
                width: _width * 0.9,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black.withOpacity(0.66),
                        blurRadius: 2.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    RoyInfo(
                      height: _height,
                      width: _width,
                      icon: 'images/yellowCircle.png',
                      name: 'Roy',
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
                    MovieDescription(
                      about:
                          'A collision of sci-fi, drama and horror, "Before I Fall" earns points for ambition. ',
                    ),
                    SizedBox(
                      height: _height * 0.01,
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Screen2();
                          }));
                        },
                        child: Text(
                          '10 Comments',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
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
              SizedBox(
                height: _height * 0.025,
              ),
              Container(
                height: _height * 0.4,
                width: _width * 0.9,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black.withOpacity(0.66),
                        blurRadius: 2.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: FullMovie(
                  height: _height,
                  width: _width,
                  image: "images/image2.png",
                ),
              ),
              SizedBox(
                height: _height * 0.022,
              ),
              Container(
                height: _height * 0.08,
                padding: EdgeInsets.all(15),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.black,
                        ),
                        Text("Home")
                      ],
                    ),
                    Column(
                      children: [Icon(Icons.search), Text("Search")],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.person_outline_sharp,
                          color: Colors.black,
                        ),
                        Text("Profile")
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FullMovie extends StatelessWidget {
  const FullMovie({
    Key? key,
    required double height,
    required double width,
    required String image,
  })  : _height = height,
        _width = width,
        _image = image,
        super(key: key);

  final double _height;
  final double _width;
  final String _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoyInfo(
          height: _height,
          width: _width,
          icon: 'images/redcircle.png',
          name: 'Tim',
        ),
        SizedBox(
          height: _height * 0.017,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(_image),
        ),
        SizedBox(
          height: _height * 0.01,
        ),
        MovieDescription(
            about:
                '1917 is riveting as well as an exhilarating experience. It is one of the best war films ever made. '),
        SizedBox(
          height: _height * 0.01,
        ),
        Divider(
          thickness: 1,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '5 Comments',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        Divider(
          thickness: 1,
        ),
        MovieInfo(
          likes: '4 likes',
          rating: '3.8',
        )
      ],
    );
  }
}
