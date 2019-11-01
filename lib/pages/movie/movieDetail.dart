import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../global.dart';

class MovieDetailPage extends StatefulWidget {
  var arguments;

  MovieDetailPage({Key key, this.arguments}) : super(key: key);

  @override
  _MovieDetailPageState createState() {
    return _MovieDetailPageState();
  }
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  Map mitem;

  @override
  void initState() {
    super.initState();
    mitem = widget.arguments;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.arguments['title']}'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.network(
                  mitem['images']['small'],
                  width: 130,
                  height: 180,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('电影名称：${mitem['title']}'),
                      Text('上映年份:${mitem['year']}年'),
                      Text('电影类型：${mitem['genres'].join('，')}'),
                      Text('豆瓣评分：${mitem['rating']['average']}分'),
                      Text('只要演员：${getPlayerName(mitem['casts'])}'),
                    ],
                  ),
                )
              ],
            ),
            Wrap(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 140,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 120,
                        child: Image.network(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573203158&di=4824ac4d1a521879102d050542ebe346&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F20%2F20171020164428_KXUMZ.thumb.700_0.jpeg',
                            fit: BoxFit.cover),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('这就是社会'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 140,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 120,
                        child: Image.network(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573203158&di=4824ac4d1a521879102d050542ebe346&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F20%2F20171020164428_KXUMZ.thumb.700_0.jpeg',
                            fit: BoxFit.cover),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('这就是社会'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 140,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 120,
                        child: Image.network(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573203158&di=4824ac4d1a521879102d050542ebe346&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F20%2F20171020164428_KXUMZ.thumb.700_0.jpeg',
                            fit: BoxFit.cover),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('这就是社会'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 140,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 120,
                        child: Image.network(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573203158&di=4824ac4d1a521879102d050542ebe346&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F20%2F20171020164428_KXUMZ.thumb.700_0.jpeg',
                            fit: BoxFit.cover),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('这就是社会'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 140,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 120,
                        child: Image.network(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573203158&di=4824ac4d1a521879102d050542ebe346&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F20%2F20171020164428_KXUMZ.thumb.700_0.jpeg',
                            fit: BoxFit.cover),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('这就是社会'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 140,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 120,
                        child: Image.network(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573203158&di=4824ac4d1a521879102d050542ebe346&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F20%2F20171020164428_KXUMZ.thumb.700_0.jpeg',
                            fit: BoxFit.cover),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('这就是社会'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 140,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 120,
                        child: Image.network(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573203158&di=4824ac4d1a521879102d050542ebe346&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201710%2F20%2F20171020164428_KXUMZ.thumb.700_0.jpeg',
                            fit: BoxFit.cover),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('这就是社会'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
