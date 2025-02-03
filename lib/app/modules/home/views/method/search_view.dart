import 'package:flutter/material.dart';

import '../../../widget/text_input/search_bar.dart';

Widget searchView({required TextEditingController searcController}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        SearchBarWidget(controller: searcController),
      ],
    ),
  );
}
