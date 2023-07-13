import 'package:flutter/material.dart';

class TsClip3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height - 100);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
class TsClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 100);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
class TsClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 200, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}

class clippath_widget extends StatefulWidget {
  const clippath_widget({Key? key}) : super(key: key);

  @override
  State<clippath_widget> createState() => _clippath_widgetState();
}

class _clippath_widgetState extends State<clippath_widget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("clip-path_widget"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: TsClip1(),
            child: Container(
              width: double.infinity,
              height: 500,
              color: Colors.amberAccent,
            ),
          ),
          ClipPath(
            clipper: TsClip2(),
            child: Container(
              width: double.infinity,
              height: 400,
              color: Colors.redAccent,
            ),
          ),
          ClipPath(
            clipper: TsClip3(),
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.britannica.com/q:60/84/203584-050-57D326E5/speed-internet-technology-background.jpg"))),
            ),
          ),
        ],
      ),
    );
  }

}
