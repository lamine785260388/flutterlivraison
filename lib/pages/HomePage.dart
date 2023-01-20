import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/animation/ScaleRoute.dart';
import 'package:flutter_application_1/pages/SignInPage.dart';
import 'package:flutter_application_1/widgets/BestFoodWidget.dart';
import 'package:flutter_application_1/widgets/BottomNavBarWidget.dart';
import 'package:flutter_application_1/widgets/PopularFoodsWidget.dart';
import 'package:flutter_application_1/widgets/SearchWidget.dart';
import 'package:flutter_application_1/widgets/TopMenus.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "Que voulez vous commandez?",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {Navigator.push(context, ScaleRoute(page: SignInPage()));})
        ], systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            TopMenus(),
            PopularFoodsWidget(),
            BestFoodWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
