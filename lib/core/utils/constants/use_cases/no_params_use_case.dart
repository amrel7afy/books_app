import 'package:dartz/dartz.dart';

import '../../../../Features/home/domain/repos/home_repo.dart';

abstract class UseCase<Type>{
  Future<Either<Failure,Type>>call();
}
