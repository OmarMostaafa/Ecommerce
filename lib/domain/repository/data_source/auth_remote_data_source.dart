
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/entity/auth_result_entity.dart';
import 'package:ecommerce/domain/failures.dart';

abstract class AuthRemoteDataSource {
  Future <Either <Faliures,AuthResultEntity>> register (String name , String email, String password , String rePassword,
      String phone);
}