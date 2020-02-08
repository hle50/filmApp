import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import '../widgets/expandable_text.dart';

class FilmDetail extends StatelessWidget {
  static const routeName = 'FilmDetail';
  final String sample =
      'Aculis massa commodo, sit purus ac et. Fusce semper sed, morbi mi proin ac non nulla, irure malesuada est euismod, sed pulvinar quis donec cum, ut aliqua nunc semper. Aliquam ornare mauris lectus, et ut elit sed massa, viverra proin ligula. Aliquam aliquet in vel, viverra ipsum, ut urna, non tortor urna nunc blandit sit feugiat. Amet donec eget fringilla tincidunt amet mi, ut nullam aliquam integer felis ut. Arcu scelerisque urna. Volutpat dui quis a curabitur, nunc enim integer eget pretium hac, tellus elementum eu. Nec dictum eget, rhoncus dignissim, at et eu fringilla purus. Molestie nisl non turpis, mattis id lectus erat tempor varius diam, duis felis dictumst ante odio maecenas, vestibulum taciti eros nulla lobortis tortor eget, nec et libero. Maecenas ridiculus justo ac eros, vitae proin nec sagittis fusce eu a. Cras etiam aliquet a ipsum, sem metus est tincidunt.';
  const FilmDetail({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.book,
                  size: 35,
                ),
              )
            ],
            expandedHeight: 200,
            pinned: true,
            floating: true,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Mat biec'),
              centerTitle: true,
              background: Image.network(
                'https://image.thanhnien.vn/768/uploaded/thuymien/2019_07_09/66484810_448982448986604_6091605798713032704_n_okqp.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Mat Biec',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        color: Colors.black54),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RatingBar(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 40.0,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Text('8.1',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.access_time,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '111min',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.movie,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        DateFormat.yMMMd().format(new DateTime.now()),
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Chip(
                      labelStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.green,
                      label: Text(
                        'Action',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Chip(
                        backgroundColor: Colors.green,
                        labelStyle: TextStyle(fontSize: 20),
                        label: Text(
                          'Science',
                        ),
                      ),
                    ),
                    Chip(
                      backgroundColor: Colors.green,
                      labelStyle: TextStyle(fontSize: 20),
                      label: Text(
                        'Adventure',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                            'https://media.baosuckhoecongdong.vn/mediav2/files/Soi-profile-dan-dien-vien-cuc-pham-cua-phim-Mat-Biec_1.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                              'https://media.baosuckhoecongdong.vn/mediav2/files/Soi-profile-dan-dien-vien-cuc-pham-cua-phim-Mat-Biec_3.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                              'https://media.baosuckhoecongdong.vn/mediav2/files/Soi-profile-dan-dien-vien-cuc-pham-cua-phim-Mat-Biec_8.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                              'https://media.baosuckhoecongdong.vn/mediav2/files/Soi-profile-dan-dien-vien-cuc-pham-cua-phim-Mat-Biec_3.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                              'https://media.baosuckhoecongdong.vn/mediav2/files/Soi-profile-dan-dien-vien-cuc-pham-cua-phim-Mat-Biec_8.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                              'https://media.baosuckhoecongdong.vn/mediav2/files/Soi-profile-dan-dien-vien-cuc-pham-cua-phim-Mat-Biec_3.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                              'https://media.baosuckhoecongdong.vn/mediav2/files/Soi-profile-dan-dien-vien-cuc-pham-cua-phim-Mat-Biec_8.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                              'https://media.baosuckhoecongdong.vn/mediav2/files/Soi-profile-dan-dien-vien-cuc-pham-cua-phim-Mat-Biec_3.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                              'https://media.baosuckhoecongdong.vn/mediav2/files/Soi-profile-dan-dien-vien-cuc-pham-cua-phim-Mat-Biec_8.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(sample, style: TextStyle(fontSize: 20),),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
