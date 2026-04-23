import 'dart:convert';

import 'package:fruits_ecommerce/constants.dart';
import 'package:fruits_ecommerce/core/services/shared_prefs.dart';
import 'package:fruits_ecommerce/features/auth/data/models/user_model.dart';
import 'package:fruits_ecommerce/features/auth/domain/entities/user_entity.dart';

UserEntity getUserData() {
  String data = SharedPrefs.getString(kUserData);
  var userEntity = UserModel.fromJson(jsonDecode(data));
  return userEntity;
}
