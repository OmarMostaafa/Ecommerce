import 'package:dartz/dartz.dart';
import 'package:ecommerce/data/model/api/api_manager.dart';

import 'package:ecommerce/domain/entity/auth_result_entity.dart';

import 'package:ecommerce/domain/failures.dart';

import '../../../domain/repository/data_source/auth_remote_data_source.dart';

class AuthRemoteDataSourceImp implements AuthRemoteDataSource{
  ApiManager apiManager;
  AuthRemoteDataSourceImp({required this.apiManager});
  @override
  Future<Either<Faliures, AuthResultEntity>> register(String name, String email, String password, String rePassword, String phone)  async {

     var either =  await apiManager.register(name, email, password, rePassword, phone);
    return either.fold((l) {
       return Left(Faliures(errorMessage: l.errorMessage));
     },
             (response) {
return Right(response.toAuthResultEntity());
             });
  }

}