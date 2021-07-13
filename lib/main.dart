import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/majors/all_major_tabar/all_major_tabar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(child: Scaffold(body: TabBarContent())));
    // home: CoreVideosWidget(
    //   path:
    //       'https://r2---sn-nh5gu5mp5u5-2oie.googlevideo.com/videoplayback?expire=1626214749&ei=_bztYKTPCv6nz7sPnKeL4Ag&ip=27.109.115.139&id=o-AE-84jPlzltTOj2EFytI9d6a8T3vFH5fjkyEQWTPBCQh&itag=18&source=youtube&requiressl=yes&mh=_a&mm=31%2C29&mn=sn-nh5gu5mp5u5-2oie%2Csn-i3belnl7&ms=au%2Crdu&mv=m&mvi=2&pl=24&initcwndbps=386250&vprv=1&mime=video%2Fmp4&ns=W5ruOlVF6L3KIWF8cIaYDsMG&gir=yes&clen=6740480&ratebypass=yes&dur=241.951&lmt=1614584753408091&mt=1626192787&fvip=2&fexp=24001373%2C24007246&c=WEB&txp=5430434&n=9AHOAmi_FWLahbuStK&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRgIhAP3sXgsySLTUzKsthMuRIeae3Iy3_ODGdXRbHZqQty9BAiEAyWIPkGRWVHEAB9QSfnr7aT5iRDhnvbrb_06DNOSsx-I%3D&title=%E1%9E%98%E1%9E%B7%E1%9E%93%E1%9E%9F%E1%9E%B6%E1%9E%80%E1%9E%9F%E1%9E%98%E1%9E%81%E1%9F%92%E1%9E%89%E1%9E%BB%E1%9F%86%E1%9E%8A%E1%9E%BE%E1%9E%9A%E1%9E%85%E1%9F%81%E1%9E%89%E1%9E%A0%E1%9E%BE%E1%9E%99+%E1%9E%93%E1%9F%85%E1%9E%9F%E1%9E%BB%E1%9E%B8%E1%9E%93%E1%9E%BF%E1%9E%93+Min+sak+som+me+der+jen+hz++Lyric+Video+2020&sig=AOq0QJ8wRQIhALYy_TPbPhn6gNu7cTcvi7-481L61KNltpkSM_L4bANEAiBYKJ2LxGUYBFcikmeUxiwwdYro7-mDlO0QGklMKPgCtw%3D%3D',
    //   title: 'Database System Chapter One',
    // ),
    //);
  }
}
