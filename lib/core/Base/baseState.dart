import 'package:flutter/material.dart';
import 'package:skybus/core/Base/baseNavigator.dart';
import 'package:skybus/core/Base/baseViewModel.dart';

abstract class BaseState< T extends StatefulWidget , VM extends BaseViewModel> extends State<T> implements BaseNavigator{

}