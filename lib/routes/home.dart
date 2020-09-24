import 'package:flutter/material.dart';
import 'package:flutter_news/data.dart';
import 'package:flutter_news/news_data.dart';
import 'package:flutter_news/models/article_model.dart';
import 'package:flutter_news/routes/trending.dart';
import 'package:flutter_news/routes/article.dart';
import 'package:flutter_news/routes/category.dart';
import 'package:flutter_news/models/category_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CategoryModel> categories = new List<CategoryModel>();
  List<ArticleModel> articles = new List<ArticleModel>();
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getNews();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

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
                      "Featured",
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
                      "Top Stories",
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
        body: _loading
            ? Center(
                child: Container(
                  child: CircularProgressIndicator(),
                ),
              )
            : TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        // News Reel
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 15.0,
                          ),
                          height: 370.0,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return NewsTile(
                                imageUrl: articles[index].urlToImage,
                                articleTitle: articles[index].title,
                                source: articles[index].source,
                                articleUrl: articles[index].articleUrl,
                              );
                            },
                          ),
                        ),
                        // Trending
                        Container(
                          margin: const EdgeInsets.only(
                            left: 15.0,
                            right: 15.0,
                            bottom: 5.0,
                            top: 5.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Trending",
                                  style: TextStyle(
                                    fontSize: 20.0,
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
                                          builder: (context) =>
                                              TrendingScreen()),
                                    );
                                  },
                                  color: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0),
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
                        // Trending News Reel
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 15.0,
                          ),
                          height: 166.0,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return TrendingNewsTile(
                                imageUrl: articles[index].urlToImage,
                                articleTitle: articles[index].title,
                                source: articles[index].source,
                              );
                            },
                          ),
                        ),
                        // Popular Topics
                        Container(
                          margin: const EdgeInsets.only(
                            left: 15.0,
                            right: 15.0,
                            bottom: 20.0,
                            top: 5.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Popular Topics",
                                  style: TextStyle(
                                    fontSize: 20.0,
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
                                          builder: (context) =>
                                              TrendingScreen()),
                                    );
                                  },
                                  color: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0),
                                  ),
                                  child: Text(
                                    "Show All",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Popular Topics ListView
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 15.0,
                          ),
                          height: 130.0,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: categories.length,
                              itemBuilder: (context, index) {
                                return CategoryTile(
                                  imageUrl: categories[index].imageUrl,
                                  categoryName: categories[index].categoryName,
                                );
                              }),
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

class CategoryTile extends StatelessWidget {
  final String imageUrl, categoryName;
  CategoryTile({this.imageUrl, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      margin: const EdgeInsets.only(
        left: 15.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CategoryScreen()),
          );
        },
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imageUrl),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    categoryName,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewsTile extends StatelessWidget {
  final String imageUrl, articleTitle, source, articleUrl;
  NewsTile(
      {@required this.imageUrl,
      @required this.articleTitle,
      @required this.source,
      @required this.articleUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleScreen(
              articleUrl: articleUrl,
            ),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * .6,
        margin: const EdgeInsets.only(
          top: 15.0,
          left: 15.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              height: 350,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: CachedNetworkImage(
                  height: 350,
                  fit: BoxFit.cover,
                  imageUrl: imageUrl,
                  placeholder: (context, url) => Container(
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ),
              ),
            ),
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.25),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              height: 350,
              width: double.infinity,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RaisedButton(
                        onPressed: () {},
                        color: Colors.blue.withOpacity(0.75),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        child: Text(
                          source ?? "null",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          articleTitle,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'category_name',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
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

class TrendingNewsTile extends StatelessWidget {
  final String imageUrl, articleTitle, source;
  TrendingNewsTile(
      {@required this.imageUrl,
      @required this.articleTitle,
      @required this.source});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      articleTitle,
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w800,
                      ),
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
}
