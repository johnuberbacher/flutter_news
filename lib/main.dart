import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
    statusBarColor: Colors.white,
  ));
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
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
          brightness: Brightness.light, // status bar brightness
          color: Color(0xFFFFFFFF),
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
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
          preferredSize: Size.fromHeight(125),
          child: AppBar(
            title: Container(
              margin: const EdgeInsets.only(
                top: 15.0,
              ),
              height: 40.0,
              alignment: Alignment.centerLeft,
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'search..',
                  hintStyle: TextStyle(
                    fontSize: 15.0,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: Icon(Icons.search),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  contentPadding: const EdgeInsets.only(
                    top: 5.0,
                    left: 25.0,
                    right: 25.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide: BorderSide(
                      color: Colors.blueGrey.withOpacity(0.15),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.25),
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
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArticleScreen()),
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * .6,
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
                                      padding:
                                          const EdgeInsets.only(bottom: 3.0),
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
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black,
                                image: DecorationImage(
                                    colorFilter: new ColorFilter.mode(
                                        Colors.black.withOpacity(0.75),
                                        BlendMode.dstATop),
                                    image: AssetImage(
                                        "assets/images/nfl-stock.png"),
                                    fit: BoxFit.cover)),
                          ),
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
                          width: MediaQuery.of(context).size.width * .6,
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
                          width: MediaQuery.of(context).size.width * .6,
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
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TrendingScreen()),
                              );
                            },
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
                              Expanded(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

class TrendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        centerTitle: true,
        title: Text(
          "Trending",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
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
                          offset: Offset(0, 4), // changes position of shadow
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
                                  padding: const EdgeInsets.only(bottom: 10.0),
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
                                  padding: const EdgeInsets.only(bottom: 3.0),
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
                          offset: Offset(0, 4), // changes position of shadow
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
                                  padding: const EdgeInsets.only(bottom: 10.0),
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
                                  padding: const EdgeInsets.only(bottom: 3.0),
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
    );
  }
}

class ArticleScreen extends StatelessWidget {
  @override
  void main() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
        ),
        child: Column(
          children: [
            Container(
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
                top: 15.0,
              ),
              child: Align(
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
            ),
            Container(
              height: 220.0,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                top: 15.0,
                bottom: 30.0,
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
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: new BorderRadius.all(
                    Radius.circular(15),
                  ),
                  image: DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.75), BlendMode.dstATop),
                      image: AssetImage("assets/images/nfl-stock.png"),
                      fit: BoxFit.cover)),
            ),
            Container(
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras tincidunt lobortis feugiat vivamus at augue eget arcu. Pulvinar sapien et ligula ullamcorper malesuada proin libero. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. In nulla posuere sollicitudin aliquam ultrices sagittis. Vitae purus faucibus ornare suspendisse sed nisi lacus sed. Enim lobortis scelerisque fermentum dui faucibus in ornare quam. Eu augue ut lectus arcu bibendum at varius vel pharetra. Id consectetur purus ut faucibus pulvinar. Eget est lorem ipsum dolor sit amet consectetur adipiscing elit. Eu turpis egestas pretium aenean. Amet purus gravida quis blandit turpis cursus in. Hendrerit gravida rutrum quisque non tellus orci ac auctor augue. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. "),
            ),
          ],
        ),
      ),
    );
  }
}
