import 'package:dartz/dartz.dart';
import 'package:learn_ddd_and_bloc/domain/auth/auth_failure.dart';
import 'package:learn_ddd_and_bloc/domain/auth/user.dart';
import 'package:learn_ddd_and_bloc/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Option<User> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
