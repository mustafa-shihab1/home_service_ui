import 'package:flutter/material.dart';

class BtmNavBarModel{
  Widget _screen;

  BtmNavBarModel(this._screen);

  Widget get screen => _screen;

  set screen(Widget value) {
    _screen = value;
  }

}