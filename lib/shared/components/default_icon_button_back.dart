import 'package:authentication/shared/styles/icons/icon_broken.dart';
import 'package:flutter/material.dart';

Widget defaultIconButtonBack({
  context,
}) => IconButton(
  onPressed: ()
  {
    Navigator.pop(context);
  },
  icon: const Icon(IconBroken.Arrow___Left_2 , color: Colors.black, size: 30,),
);