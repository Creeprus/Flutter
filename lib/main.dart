import 'package:flutter/material.dart';

import 'core/db/data_base_helper.dart';

void main() {
 DataBaseHelper.instance.onCreateTable(DataBaseHelper.instance.database);
  runApp(const MyApp());
}
