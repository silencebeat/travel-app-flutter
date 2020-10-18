import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/destination_model.dart';
import 'package:flutter_travel_ui_starter/models/variable.dart';
import 'package:flutter_travel_ui_starter/screens/destination_detail_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListDestinationScreen extends StatefulWidget {
  @override
  _ListDestinationScreenState createState() => _ListDestinationScreenState();
}

class _ListDestinationScreenState extends State<ListDestinationScreen> {
  ScrollController _scrollController;
  int _currentIndex = 0;
  Variable variable = new Variable();

  var imgSlider = [
    'header1.jpg',
    'header2.jpg',
    'header3.jpg',
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
        _scrollController.offset > (300 - kToolbarHeight);
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
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
            title: Text("Top Destinations",
                style: TextStyle(
                  color: isShrink ? Colors.black : Colors.white,
                )),
            iconTheme: IconThemeData(
              color: isShrink
                  ? Colors.black
                  : Colors.white, //change your color here
            ),
            backgroundColor: isShrink ? Colors.white : Colors.transparent,
            pinned: true,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.transparent,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.width,
                      child: CarouselSlider(
                        items: imgSlider.map((fileImage) {
                          return Container(
                            width: 1000,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30.0)),
                              child: Image.asset(
                                'assets/sliders/$fileImage',
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }).toList(),
                        height: 1000,
                        viewportFraction: 1.0,
                        autoPlay: true,
                        pauseAutoPlayOnTouch: Duration(milliseconds: 60000),
                        autoPlayAnimationDuration: Duration(milliseconds: 2000),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        onPageChanged: (index) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      // child: Container(
                      //   // child: ClipRRect(
                      //   //   borderRadius: BorderRadius.only(
                      //   //       bottomLeft: Radius.circular(30),
                      //   //       bottomRight: Radius.circular(30.0)),
                      //   //   child: Image(
                      //   //     width: double.infinity,
                      //   //     image: AssetImage('assets/images/header.jpg'),
                      //   //     fit: BoxFit.cover,
                      //   //   ),
                      //   // ),
                      // ),
                    ),
                    // Positioned(
                    //   left: 20.0,
                    //   bottom: 20.0,
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: <Widget>[
                    //       Text(
                    //         "",
                    //         style: TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 20.0,
                    //           fontWeight: FontWeight.w600,
                    //           letterSpacing: 1.2,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // )

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imgSlider.map((url) {
                          int index = imgSlider.indexOf(url);
                          return Container(
                            width: 20.0,
                            height: 8.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                              color: _currentIndex == index
                                  ? Theme.of(context).accentColor
                                  : Color.fromRGBO(0, 0, 0, 0.4),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 200, // I'm forcing item heights
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                Destination destination = destinations[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DestinationDetailScreen(
                        destination: destination,
                      ),
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                        height: 200.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(150.0, 20.0, 20.0, 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 200.0,
                                    child: Text(
                                      destination.city,
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Container(
                                    width: 120.0,
                                    child: Row(
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.locationArrow,
                                          size: 10.0,
                                          color: Colors.black45,
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text(
                                          '${destination.country}',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black45,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '${destination.activities.length} Activities',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 22.0,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                destination.description,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        top: 15.0,
                        bottom: 15.0,
                        child: Hero(
                          tag: destination.imageUrl,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                              width: 150,
                              image: AssetImage(
                                destination.imageUrl,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: destinations.length,
            ),
          ),
        ],
      ),
    );
  }
}
