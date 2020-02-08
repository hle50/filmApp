import 'package:flutter/material.dart';
import './film_list.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "asset/images/home_bg.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Center(
              child: Text(
                'Cine booking app',
                style: TextStyle(),
              ),
            ),
          ),
          body: Center(
              child: FlatButton.icon(
            icon: Icon(
              Icons.developer_board,
              color: Theme.of(context).primaryColor,
            ),
            label: Text(
              'Booking ticket',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (c, a1, a2) => FilmListScreen(),
                  transitionsBuilder: (c, anim, a2, child) =>
                      FadeTransition(opacity: anim, child: child),
                  transitionDuration: Duration(milliseconds: 1000),
                ),
              );
              // Navigator.of(context).pushNamed(FilmListScreen.routeName);
            },
            color: Colors.white,
          )),
        )
      ],
    );
  }
}
