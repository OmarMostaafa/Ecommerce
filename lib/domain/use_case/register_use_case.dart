import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/failures.dart';
import 'package:ecommerce/domain/repository/repository/auth_repository_contract.dart';
import '../entity/auth_result_entity.dart';

class RegisterUseCase{
  AuthRepositoryContract repositoryContract;
  RegisterUseCase({required this.repositoryContract});
  Future<Either<Faliures, AuthResultEntity>>invoke(String name , String email, String password , String rePassword,
      String phone){
 return repositoryContract.register(name, email, password, rePassword, phone);
  }
}