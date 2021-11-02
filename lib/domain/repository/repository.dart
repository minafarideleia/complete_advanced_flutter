import 'package:complete_advanced_flutter/data/network/failure.dart';
import 'package:complete_advanced_flutter/data/request/request.dart';
import 'package:dartz/dartz.dart';

import '../model/model.dart';

abstract class Repository{
  Future<Either<Failure,Authentication>> login(LoginRequest loginRequest);
  Future<Either<Failure, String>> forgotPassword(String email);
}