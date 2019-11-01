import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../../global.dart';

class ListPage extends StatefulWidget {
  //固定写法
  ListPage({Key key, @required this.mt}) : super(key: key);
  final String mt; //电影类型
  @override
  _ListPageState createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<ListPage> with AutomaticKeepAliveClientMixin{
  // "http://www.liulongbin.top:3005/api/v2/movie/${widget.tabFlag}?start=$offSet&count=$pageSize");
  Response response;
  Dio dio = new Dio();
  int page = 1;
  int pageSize = 10;
  var mlist = [];
  var total = 0;

  _getMovieList() async {
    int offSet = (page - 1) * pageSize;
    response = await dio.get(
        "http://www.liulongbin.top:3005/api/v2/movie/${widget.mt}?start=$offSet&count=$pageSize");
    var result = response.data;
    setState(() {
      //通过dio返回的数据必须通过 []来访问
      mlist = result['subjects'];
      total = result['total'];
    });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;//实现左右拉取状态保存

  @override
  void initState() {
    super.initState();
    _getMovieList();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: mlist.length,
      itemBuilder: (BuildContext ctx, int i) {
        var mitem = mlist[i];
        return GestureDetector(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
//              color: Colors.red,
                border: Border(top: BorderSide(color: Colors.black12))),
            child: Row(
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
          ),
          onTap: () {
            Navigator.pushNamed(context, '/detail',
                arguments: mitem);
          },
        ); //用于提供事件触发
      },
    ); //必须有  循环次数;
  }
}
