// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i9;

import '../home_page.dart' as _i1;
import '../posts/posts_page.dart' as _i4;
import '../posts/single_post_page.dart' as _i5;
import '../setting/setting_page.dart' as _i3;
import '../users/user_profile_page.dart' as _i7;
import '../users/users_page.dart' as _i6;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    PostsRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    UsersRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SettingsRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SettingsPage(),
      );
    },
    PostsRoute.name: (routeData) {
      final args = routeData.argsAs<PostsRouteArgs>(
          orElse: () => const PostsRouteArgs());
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.PostsPage(key: args.key),
      );
    },
    SinglePostRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SinglePostRouteArgs>(
          orElse: () =>
              SinglePostRouteArgs(postId: pathParams.getInt('postId')));
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.SinglePostPage(
          key: args.key,
          postId: args.postId,
        ),
      );
    },
    UsersPostRoute.name: (routeData) {
      final args = routeData.argsAs<UsersPostRouteArgs>(
          orElse: () => const UsersPostRouteArgs());
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.UsersPostPage(key: args.key),
      );
    },
    UserProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserProfileRouteArgs>(
          orElse: () =>
              UserProfileRouteArgs(userId: pathParams.getInt('userId')));
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.UserProfilePage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i8.RouteConfig(
              PostsRouter.name,
              path: 'posts',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(
                  PostsRoute.name,
                  path: '',
                  parent: PostsRouter.name,
                ),
                _i8.RouteConfig(
                  SinglePostRoute.name,
                  path: ':postId',
                  parent: PostsRouter.name,
                ),
              ],
            ),
            _i8.RouteConfig(
              UsersRouter.name,
              path: 'users',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(
                  UsersPostRoute.name,
                  path: '',
                  parent: UsersRouter.name,
                ),
                _i8.RouteConfig(
                  UserProfileRoute.name,
                  path: ':userId',
                  parent: UsersRouter.name,
                ),
              ],
            ),
            _i8.RouteConfig(
              SettingsRouter.name,
              path: 'settings',
              parent: HomeRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PostsRouter extends _i8.PageRouteInfo<void> {
  const PostsRouter({List<_i8.PageRouteInfo>? children})
      : super(
          PostsRouter.name,
          path: 'posts',
          initialChildren: children,
        );

  static const String name = 'PostsRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class UsersRouter extends _i8.PageRouteInfo<void> {
  const UsersRouter({List<_i8.PageRouteInfo>? children})
      : super(
          UsersRouter.name,
          path: 'users',
          initialChildren: children,
        );

  static const String name = 'UsersRouter';
}

/// generated route for
/// [_i3.SettingsPage]
class SettingsRouter extends _i8.PageRouteInfo<void> {
  const SettingsRouter()
      : super(
          SettingsRouter.name,
          path: 'settings',
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i4.PostsPage]
class PostsRoute extends _i8.PageRouteInfo<PostsRouteArgs> {
  PostsRoute({_i9.Key? key})
      : super(
          PostsRoute.name,
          path: '',
          args: PostsRouteArgs(key: key),
        );

  static const String name = 'PostsRoute';
}

class PostsRouteArgs {
  const PostsRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'PostsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.SinglePostPage]
class SinglePostRoute extends _i8.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({
    _i9.Key? key,
    required int postId,
  }) : super(
          SinglePostRoute.name,
          path: ':postId',
          args: SinglePostRouteArgs(
            key: key,
            postId: postId,
          ),
          rawPathParams: {'postId': postId},
        );

  static const String name = 'SinglePostRoute';
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({
    this.key,
    required this.postId,
  });

  final _i9.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i6.UsersPostPage]
class UsersPostRoute extends _i8.PageRouteInfo<UsersPostRouteArgs> {
  UsersPostRoute({_i9.Key? key})
      : super(
          UsersPostRoute.name,
          path: '',
          args: UsersPostRouteArgs(key: key),
        );

  static const String name = 'UsersPostRoute';
}

class UsersPostRouteArgs {
  const UsersPostRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'UsersPostRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.UserProfilePage]
class UserProfileRoute extends _i8.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({
    _i9.Key? key,
    required int userId,
  }) : super(
          UserProfileRoute.name,
          path: ':userId',
          args: UserProfileRouteArgs(
            key: key,
            userId: userId,
          ),
          rawPathParams: {'userId': userId},
        );

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({
    this.key,
    required this.userId,
  });

  final _i9.Key? key;

  final int userId;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, userId: $userId}';
  }
}
