import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _animation2;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    _animation2 = Tween<double>(begin: -30, end: 0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(w / 17, w / 20, 0, w / 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Your App\'s Nmae',
                            style: TextStyle(
                              fontSize: 27,
                              color: Colors.black.withOpacity(.6),
                              fontWeight: FontWeight.w700,
                            )),
                        SizedBox(height: w / 35),
                        Text(
                          'Here you can write something about the app',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    )), 
                    HomePageCardsGroup(
                      const Color(0xfff37736), 
                      Icons.analytics_outlined, 
                      'Example example', 
                      context, 
                      RouteWhereYouGo(), 
                      const Color(0xffFF6D6D), 
                      Icons.all_inclusive, 
                      'Example example example', 
                      RouteWhereYouGo(), 
                    ),
                    HomePageCardsGroup(
                      Colors.lightGreen, 
                      Icons.gamepad_outlined,  
                      'Example example', 
                      context, 
                      RouteWhereYouGo(), 
                      const Color(0xffffa700), 
                      Icons.article, 
                      'Example example example', 
                      RouteWhereYouGo(), 
                    ),
                    HomePageCardsGroup(
                      const Color(0xfff37736), 
                      Icons.ad_units_outlined, 
                      'Example example', 
                      context, 
                      RouteWhereYouGo(), 
                      const Color(0xffFF6D6D), 
                      Icons.article_sharp, 
                      'Example example example', 
                      RouteWhereYouGo(), 
                    ),
                    HomePageCardsGroup(
                      const Color(0xfff37736), 
                      Icons.android,  
                      'Example example', 
                      context, 
                      RouteWhereYouGo(), 
                      Colors.lightGreen, 
                      Icons.text_format, 
                      'Example example example', 
                      RouteWhereYouGo(), 
                    ),
                    HomePageCardsGroup(
                      const Color(0xffffa700), 
                      Icons.text_fields, 
                      'Example example', 
                      context, 
                      RouteWhereYouGo(), 
                      const Color(0xff63ace5), 
                      Icons.calendar_today_sharp, 
                      'Example example ', 
                      RouteWhereYouGo(), 
                    ),
                    SizedBox(height: w/29), 
              ], 
                    ), 

                    // Setting Icon
                    Padding(padding: EdgeInsets.fromLTRB(0,w/9.5, w/15, 0), 
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.end, 
                      children: const [
                        InkWell(
                          highlightColor: Colors.transparent, 
                          splashColor: Colors.transparent, 
                          onTap: () {
                            HapticFeedback.lightImpact(); 
                            Navigator.push(
                              context, 
                            MaterialPageRoute(
                              builder: (context) {
                              return RouteWhereYouGo(); 
                            }, 
                            ), 
                            ); 

                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(99)),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 5, sigmaX: 5), 
                                child: Container(
                                  height: w/8.5, 
                                  width: w/8.5, 
                                  decoration: BoxDecoration(
                                    Colors.black.withOpacity(.05), 
                                  shape:BoxShape.circle, 
                                ), 
                                child: Center(
                                  child: Icon(
                                    Icons.settings,
                                    size: w/17,
                                    color: Colors.black.withOpacity(.6),
                                )), 
                            ),
                          ),

                        )), 

                    ],
                    )), 

                    //blur the status bar
                    blurTheStatusBar(context), 
              ],
            ), 
    ); 
          
  }

  Widget homePageCardsGroup(
    Color color,
    IconData icon, 
    String title, 
    BuildContext context, 
    Widget route, 
    Color color2, 
    IconData icon2, 
    String title2, 
    Widget route2 ) {
      
    }
}
