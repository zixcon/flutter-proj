import 'package:flutter/material.dart';
import 'package:knots/view/page/login/login_page.dart';
import 'package:knots/view/page/common/common_web.dart';

class RouteUtil{

  static route2Web(BuildContext context, String title, String url) {
    if(null == url){
      return;
    }
    
    Navigator.of(context).push(new PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return new CommonWeb(title, FixUrlUtil.getFixUrl(url));
        },
        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
          return new FadeTransition(
            opacity: animation,
            child: new FadeTransition(
              opacity:
              new Tween<double>(begin: 0.5, end: 1.0).animate(animation),
              child: child,
            ),
          );
        }));
  }

  // static route2Detail(BuildContext context, String id) {
  //   if(null == id){
  //     return;
  //   }
  //   Navigator.of(context).push(new PageRouteBuilder(
  //       opaque: false,
  //       pageBuilder: (BuildContext context, _, __) {
  //         return new StoryDetailAppPage(id);
  //       },
  //       transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
  //         return new FadeTransition(
  //           opacity: animation,
  //           child: new FadeTransition(
  //             opacity:
  //             new Tween<double>(begin: 0.5, end: 1.0).animate(animation),
  //             child: child,
  //           ),
  //         );
  //       }));
  // }

  // static route2Home(BuildContext context) {
  //   Navigator.of(context).push(new PageRouteBuilder(
  //       opaque: false,
  //       pageBuilder: (BuildContext context, _, __) {
  //         return new HomePage();
  //       },
  //       transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
  //         return new FadeTransition(
  //           opacity: animation,
  //           child: new FadeTransition(
  //             opacity:
  //             new Tween<double>(begin: 0.5, end: 1.0).animate(animation),
  //             child: child,
  //           ),
  //         );
  //       }));
  // }

  // static route2ThemeList(BuildContext context,String themeId) {
  //   Navigator.of(context).push(new PageRouteBuilder(
  //       opaque: false,
  //       pageBuilder: (BuildContext context, _, __) {
  //         return new ThemeListPage(themeId);
  //       },
  //       transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
  //         return new FadeTransition(
  //           opacity: animation,
  //           child: new FadeTransition(
  //             opacity:
  //             new Tween<double>(begin: 0.5, end: 1.0).animate(animation),
  //             child: child,
  //           ),
  //         );
  //       }));
  // }

  // static route2Comment(BuildContext context,String themeId) {
  //   Navigator.of(context).push(new PageRouteBuilder(
  //       opaque: false,
  //       pageBuilder: (BuildContext context, _, __) {
  //         return new CommentPage(themeId);
  //       },
  //       transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
  //         return new FadeTransition(
  //           opacity: animation,
  //           child: new FadeTransition(
  //             opacity:
  //             new Tween<double>(begin: 0.5, end: 1.0).animate(animation),
  //             child: child,
  //           ),
  //         );
  //       }));
  // }


  static route2Login(BuildContext context) {
    Navigator.of(context).push(new PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return new LoginPage();
        },
        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
          return new FadeTransition(
            opacity: animation,
            child: new FadeTransition(
              opacity:
              new Tween<double>(begin: 0.5, end: 1.0).animate(animation),
              child: child,
            ),
          );
        }));
  }
}

class FixUrlUtil {
  //苹果不支持http的网页浏览，这个修改只针对本api，让服务器都改成https才是最终解决方案
  static getFixUrl(String url) {
    String fixUrl = url;

    if (url.startsWith('http')) {
      fixUrl = url.replaceAll('http', 'https');
    }

    return fixUrl;
  }
}
