import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Color(0xFFFFFFFF),
          elevation: 0,
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // The number of tabs / content sections to display.
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBar(
            title: Container(
              margin: const EdgeInsets.only(
                top: 11.0,
              ),
              height: 45.0,
              alignment: Alignment.centerLeft,
              color: Colors.white,
              child: TextField(
                style: TextStyle(
                  height: 3.1,
                ),
                decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: Icon(Icons.search),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 25.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide: BorderSide(
                      color: Colors.blueGrey.withOpacity(0.15),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.15),
                    ),
                  ),
                ),
              ),
            ),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.transparent,
              isScrollable: true,
              tabs: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 15.0,
                    ),
                    child: Text(
                      "World",
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 15.0,
                    ),
                    child: Text(
                      "Business",
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 15.0,
                    ),
                    child: Text(
                      "Politics",
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 15.0,
                    ),
                    child: Text(
                      "Science",
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 15.0,
                    ),
                    child: Text(
                      "Tech",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 370.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 15.0,
                            left: 15.0,
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
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      'Lorem Ipsum Dolor Sit Amet',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Text(
                                      'Posted By ___',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * .5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black,
                              image: DecorationImage(
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.75),
                                      BlendMode.dstATop),
                                  image:
                                      AssetImage("assets/images/nfl-stock.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 15.0,
                            left: 15.0,
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
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      'Lorem Ipsum Dolor Sit Amet',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Text(
                                      'Posted By ___',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          height: 300.0,
                          width: MediaQuery.of(context).size.width * .5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black,
                              image: DecorationImage(
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.75),
                                      BlendMode.dstATop),
                                  image: AssetImage(
                                      "assets/images/business-stock.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 15.0,
                            left: 15.0,
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
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      'Lorem Ipsum Dolor Sit Amet',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Text(
                                      'Posted By ___',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          height: 300.0,
                          width: MediaQuery.of(context).size.width * .5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black,
                            image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.75),
                                    BlendMode.dstATop),
                                image:
                                    AssetImage("assets/images/nfl-stock.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                      bottom: 15.0,
                      top: 30.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Trending",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            child: Text(
                              "More",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
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
                              Container(
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
                            ],
                          ),
                        ),
                        Container(
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
                          width: MediaQuery.of(context).size.width * .875,
                          child: Row(
                            children: [
                              Container(
                                width: 120.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                      colorFilter: new ColorFilter.mode(
                                          Colors.black.withOpacity(0.75),
                                          BlendMode.dstATop),
                                      image: AssetImage(
                                          "assets/images/business-stock.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                child: Container(
                                  margin: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10.0),
                                        child: Container(
                                          child: Expanded(
                                            child: Text(
                                              'Lorem Ipsum Dolor',
                                              softWrap: true,
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w800,
                                              ),
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
                                            fontSize: 13.0,
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
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
