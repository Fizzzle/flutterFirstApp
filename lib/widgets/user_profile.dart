// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  List<MenuRowData> firstMenuRow = [
    MenuRowData(
      Icons.favorite,
      'Избранное',
    ),
    MenuRowData(
      Icons.call,
      'Звонки',
    ),
    MenuRowData(
      Icons.computer,
      'Устройства',
    ),
    MenuRowData(
      Icons.chat_bubble,
      'Папка с чатами',
    ),
  ];
  List<MenuRowData> secondMenuRow = [
    MenuRowData(
      Icons.notification_add,
      'Уведомления и звуки',
    ),
    MenuRowData(
      Icons.privacy_tip,
      'Конфидециальность',
    ),
    MenuRowData(
      Icons.date_range,
      'Данные и память',
    ),
    MenuRowData(
      Icons.brush,
      'Оформление',
    ),
    MenuRowData(
      Icons.language,
      'Язык',
    ),
  ];
  // ignore: use_key_in_widget_constructors
  UserProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Настройки'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          // verticalDirection: VerticalDirection.up, элементы снизу вверх идут
          children: [
            _UserInfo(),
            SizedBox(
              height: 30,
            ),
            _MenuWidget(menuRow: firstMenuRow),
            SizedBox(
              height: 30,
            ),
            _MenuWidget(menuRow: secondMenuRow),
          ],
        ),
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({
    Key? key,
    required this.menuRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuWidgetRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Icon(data.icon),
          SizedBox(width: 15),
          Expanded(
            child: Text(data.text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                )),
          ),
          SizedBox(width: 15),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  // ignore: unused_element
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(
            height: 30,
          ),
          _AvatarWidget(),
          SizedBox(height: 30),
          _UserNameWidget(),
          SizedBox(height: 10),
          _UserPhoneWidget(),
          SizedBox(height: 10),
          _UserNicknameWidget(),
        ],
      ),
    );
  }
}

class _UserNicknameWidget extends StatelessWidget {
  const _UserNicknameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '@ViktorGuys',
      style: TextStyle(
        fontSize: 17,
        color: Colors.grey,
      ),
    );
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '+3809999999',
      style: TextStyle(
        fontSize: 20,
        color: Colors.grey[700],
      ),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Viktor',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Placeholder(),
      width: 100,
      height: 100,
    );
  }
}
