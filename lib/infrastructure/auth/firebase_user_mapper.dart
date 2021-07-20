import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:learn_ddd_and_bloc/domain/auth/user.dart' as custom_user;
import 'package:learn_ddd_and_bloc/domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase_auth.User {
  custom_user.User toDomain() {
    return custom_user.User(id: UniqueId.fromUniqueString(uid));
  }
}
