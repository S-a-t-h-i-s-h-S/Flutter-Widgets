import 'package:flutter/material.dart';
import 'package:flutter_stateful/widgets/Alert.dart';
import 'package:flutter_stateful/widgets/AnimatedText.dart';
import 'package:flutter_stateful/widgets/BottomNav.dart';
import 'package:flutter_stateful/widgets/BottomSheet.dart';
import 'package:flutter_stateful/widgets/Button.dart';
import 'package:flutter_stateful/widgets/CloningUI.dart';
import 'package:flutter_stateful/widgets/Container_Sized.dart';
import 'package:flutter_stateful/widgets/Dismissible.dart';
import 'package:flutter_stateful/widgets/Drawer.dart';
import 'package:flutter_stateful/widgets/DropDowm.dart';
import 'package:flutter_stateful/widgets/Form.dart';
import 'package:flutter_stateful/widgets/ImagePicker.dart';
import 'package:flutter_stateful/widgets/InstaUI.dart';
import 'package:flutter_stateful/widgets/List_Grid.dart';
import 'package:flutter_stateful/widgets/Rows_cols.dart';
import 'package:flutter_stateful/widgets/Snackbar.dart';
import 'package:flutter_stateful/widgets/TabBar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(brightness: Brightness.light, primaryColor: Colors.green),
      home: InstaUI(),
    );
  }
}
