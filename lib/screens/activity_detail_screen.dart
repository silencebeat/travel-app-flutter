import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/activity_model.dart';
import 'package:flutter_travel_ui_starter/models/review_model.dart';

class ActivityDetailScreen extends StatefulWidget {
  Activity activity;
  int index;

  ActivityDetailScreen({this.activity, this.index});

  @override
  _ActivityDetailScreenState createState() => _ActivityDetailScreenState();
}

class _ActivityDetailScreenState extends State<ActivityDetailScreen>
    with SingleTickerProviderStateMixin {
  Text _buildRatingStars(int rating) {
    var stars = "";
    for (var i = 0; i < rating; i++) {
      stars += '⭐️ ';
    }
    stars.trim();
    return Text(stars);
  }

  ScrollController _scrollController;

  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(icon: Icon(Icons.card_travel)),
    Tab(icon: Icon(Icons.add_shopping_cart)),
  ];

  bool lastStatus = true;
  _scrollListener() {
    if (isShrink != lastStatus) {
      setState(() {
        lastStatus = isShrink;
      });
    }
  }

  bool get isShrink {
    return _scrollController.hasClients &&
        _scrollController.offset > (200 - kToolbarHeight);
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _controller = TabController(length: 3, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            title: Text(isShrink ? widget.activity.name : "Details",
                style: TextStyle(
                  color: Colors.black,
                )),
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            backgroundColor: Colors.white,
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.white,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 130,
                      width: 110.0,
                      margin: EdgeInsets.fromLTRB(20.0, 90.0, 5.0, 5.0),
                      child: Hero(
                        tag: '${widget.activity.imageUrl}-${widget.index}',
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            width: 110.0,
                            image: AssetImage(
                              widget.activity.imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 250,
                      width: double.infinity,
                      margin: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 5.0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(140.0, 40.0, 20.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 120.0,
                                  child: Text(
                                    widget.activity.name,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      '\$${widget.activity.price}',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'per pax',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                              widget.activity.type,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            _buildRatingStars(widget.activity.rating),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  width: 70.0,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    widget.activity.startTimes[0],
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  width: 70.0,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    widget.activity.startTimes[1],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottom: TabBar(
              controller: _controller,
              tabs: [
                Tab(text: "Description"),
                Tab(text: "Review"),
                Tab(text: "Gallery"),
              ],
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              
              controller: _controller,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(widget.activity.description,
                      style: TextStyle(
                        fontSize: 16.0,
                      )),
                ),
                ListView.builder(
                  itemBuilder: (context, index) {
                    Review review = widget.activity.reviews[index];
                    // return Text(review.name);
                    return Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 5.0),
                          height: 100.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(70.0, 8.0, 20.0, 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  review.name,
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  review.reviewText,
                                  style: TextStyle(color: Colors.grey),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                _buildRatingStars(review.rating)
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30.0,
                          top: 20.0,
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundImage:
                                NetworkImage('https://pinotmasters.sk/wp-content/uploads/2014/10/speaker-3.jpg'),
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: widget.activity.reviews.length,
                ),
                Text("This is gallery tab view"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
