import 'package:ecommerce/data/model/api/api_manager.dart';
import 'package:ecommerce/data/repository/data_source/auth_remote_data_source_imp.dart';
import 'package:ecommerce/data/repository/repository/auth_repository_imp.dart';
import 'package:ecommerce/domain/repository/data_source/auth_remote_data_source.dart';
import 'package:ecommerce/domain/repository/repository/auth_repository_contract.dart';
import 'package:ecommerce/domain/use_case/register_use_case.dart';

RegisterUseCase injectRegisterUseCase(){
  return RegisterUseCase(repositoryContract: injectAuthRepositoryContract());
}
AuthRepositoryContract  injectAuthRepositoryContract(){
  return AuthRepositoryImp(remoteDataSource: injectAuthRemoteDataSource());
}
AuthRemoteDataSource injectAuthRemoteDataSource(){
  return AuthRemoteDataSourceImp(apiManager: ApiManager.getinstance());
}