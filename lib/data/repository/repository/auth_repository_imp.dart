import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/entity/auth_result_entity.dart';
import 'package:ecommerce/domain/failures.dart';
import 'package:ecommerce/domain/repository/data_source/auth_remote_data_source.dart';
import 'package:ecommerce/domain/repository/repository/auth_repository_contract.dart';

class  AuthRepositoryImp implements AuthRepositoryContract{
  AuthRemoteDataSource remoteDataSource ;
  AuthRepositoryImp({required this.remoteDataSource});
  @override
  Future<Either<Faliures, AuthResultEntity>> register(String name, String email, String password, String rePassword, String phone) {
 return remoteDataSource.register(name, email, password, rePassword, phone);
  }

}