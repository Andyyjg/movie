import 'package:flutter/material.dart';
import './movie/listPage.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key key}) : super(key: key);

  @override
  _TabsPageState createState() {
    return _TabsPageState();
  }
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //flutter中每个控件都是一个类
        appBar: AppBar(
          title: Text('电影天堂'),
          centerTitle: true, //标题文本居中
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ], //右侧行为按钮
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text('12345@163.com'),
                accountName: Text('天王老子'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572587056726&di=dbef7aad43cd8ada0f8c4b8962e40426&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201806%2F07%2F20180607185957_fjrFt.thumb.700_0.jpeg'),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572586896093&di=b9bd27e8973dbd3663bff106754732d6&imgtype=0&src=http%3A%2F%2Fx5.tgbus.com%2FUploadFiles_8940%2F201403%2F2014031822301211.jpg',
                        ),
                        fit: BoxFit.cover)),
              ),
              ListTile(
                title: Text('用户反馈'),
                trailing: Icon(Icons.feedback), //后边图标
              ),
              ListTile(
                title: Text('我要发布'),
                trailing: Icon(Icons.send), //后边图标
              ),
              ListTile(
                title: Text('系统设置'),
                trailing: Icon(Icons.settings), //后边图标
              ),
              Divider(),
              ListTile(
                title: Text('注销'),
                trailing: Icon(Icons.exit_to_app), //后边图标
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 50,//一般手机上的tabBar高度都是50
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: TabBar(
            labelStyle:TextStyle(height: 0,fontSize: 10) ,//文本超出处理
            tabs: <Widget>[

              Tab(
                icon: Icon(Icons.movie_filter),
                text: '正在热映',
              ),
              Tab(
                icon: Icon(Icons.movie_creation),
                text: '即将上映',
              ),
              Tab(
                icon: Icon(Icons.local_movies),
                text: 'Top250',
              ),
            ],
          ),
        ),
        body:TabBarView(
          children: <Widget>[
            ListPage(),
            Text('112'),
            Text('112'),
          ],
        ) ,
      ),
    );
  }
}