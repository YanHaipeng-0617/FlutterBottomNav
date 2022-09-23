import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:futter_bottom_navigation/home_page.dart';
import 'package:futter_bottom_navigation/posts/posts_page.dart';
import 'package:futter_bottom_navigation/posts/single_post_page.dart';
import 'package:futter_bottom_navigation/setting/setting_page.dart';
import 'package:futter_bottom_navigation/users/user_profile_page.dart';
import 'package:futter_bottom_navigation/users/users_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute(path: '/', page: HomePage, children: [
    AutoRoute(
      path: 'posts',
      name: 'PostsRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: PostsPage),
        AutoRoute(path: ':postId', page: SinglePostPage)
      ],
    ),
    AutoRoute(
      path: 'users',
      name: 'UsersRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: UsersPostPage),
        AutoRoute(path: ':userId', page: UserProfilePage)
      ],
    ),
    AutoRoute(
      path: 'settings',
      name: 'SettingsRouter',
      page: SettingsPage,
    ),
  ]),
])
class $AppRouter {}
