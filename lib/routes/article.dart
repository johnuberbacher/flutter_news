import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class ArticleScreen extends StatelessWidget {
  @override
  void main() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness:
            Brightness.dark, //navigation bar icons' color
        statusBarBrightness:
            Brightness.dark, // Dark == white status bar -- for IOS.
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 220.0,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(
                    bottom: 30.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.75), BlendMode.dstATop),
                        image: AssetImage("assets/images/nfl-stock.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              'Posted by',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.75),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3.0),
                            child: Text(
                              'John Uberbacher',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 5.0,
                    left: 15.0,
                    right: 15.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'September 9, 2020',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      OutlineButton(
                        onPressed: () {},
                        color: Colors.blue,
                        textColor: Colors.blue,
                        borderSide: BorderSide(
                          color: Colors.blue,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        child: Text(
                          "CATEGORY",
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras tincidunt lobortis feugiat vivamus at augue eget arcu. Pulvinar sapien et ligula ullamcorper malesuada proin libero. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. "),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 15.0,
                        ),
                        color: Colors.grey.withOpacity(0.1),
                        height: 95,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                right: 20.0,
                              ),
                              width: 5,
                              color: Colors.blue,
                            ),
                            Flexible(
                              child: Text(
                                "Cras tincidunt lobortis feugiat vivamus at augue eget arcu. Pulvinar sapien et ligula ullamcorper malesuada proin libero.",
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          "Pulvinar sapien et ligula ullamcorper malesuada proin libero. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. In nulla posuere sollicitudin aliquam ultrices sagittis. Vitae purus faucibus ornare suspendisse sed nisi lacus sed. ",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 15.0,
                    left: 15.0,
                    right: 15.0,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Share this Post",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 15.0,
                    bottom: 15.0,
                    left: 15.0,
                    right: 15.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: RaisedButton(
                            onPressed: () {},
                            color: Color(0XFF3b5998),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: Icon(
                                    EvaIcons.facebook,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ),
                                Text(
                                  "Facebook",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 7.5),
                      Expanded(
                        child: Container(
                          child: RaisedButton(
                            onPressed: () {},
                            color: Color(0XFF00aced),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: Icon(
                                    EvaIcons.twitter,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ),
                                Text(
                                  "Twitter",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 7.5),
                      Expanded(
                        child: Container(
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: Icon(
                                    EvaIcons.share,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ),
                                Text(
                                  "Share",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    bottom: 10.0,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Related Posts",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150.0,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 350.0,
                        margin: const EdgeInsets.only(
                          top: 15.0,
                          bottom: 15.0,
                          left: 15.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 120.0,
                              decoration: BoxDecoration(
                                borderRadius: new BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                                color: Colors.black,
                                image: DecorationImage(
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.75),
                                      BlendMode.dstATop),
                                  image: AssetImage(
                                      "assets/images/business-stock.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: Container(
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit iusmod.',
                                          softWrap: true,
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 3.0),
                                      child: Text(
                                        'Posted By ___',
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 350.0,
                        margin: const EdgeInsets.only(
                          top: 15.0,
                          bottom: 15.0,
                          left: 15.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 120.0,
                              decoration: BoxDecoration(
                                borderRadius: new BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                                color: Colors.black,
                                image: DecorationImage(
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.75),
                                      BlendMode.dstATop),
                                  image: AssetImage(
                                      "assets/images/business-stock.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: Container(
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit iusmod.',
                                          softWrap: true,
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 3.0),
                                      child: Text(
                                        'Posted By ___',
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
