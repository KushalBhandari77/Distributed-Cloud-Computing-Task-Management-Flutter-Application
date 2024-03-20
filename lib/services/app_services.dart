import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
BuildContext currentContext = navigatorKey.currentState!.context;
