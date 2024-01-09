// ignore_for_file: constant_identifier_names
// DO NOT USE 'dartfmt' on this file for formatting

import 'package:flutter/material.dart';

@immutable
class ApiEndpoint {
  const ApiEndpoint._();

  static const String baseUrl = stagingUrl;
  static const String stagingUrl = 'https://api.github.com';
  static const String productionUrl = '';

  static String auth(AuthEndpoint endpoint) {
    var path = baseUrl;
    switch (endpoint) {
      case AuthEndpoint.PROFILE:
        return '$path/user';
      case AuthEndpoint.REPO_LIST:
        return '$path/orgs/';
    }
  }

}

enum AuthEndpoint {
  PROFILE,
  REPO_LIST
}
