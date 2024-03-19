
import 'package:dartz/dartz.dart';

import '../../errors/failure.dart';

abstract class UseCase<Type,Param,EndPar>{
  Future<Either<Failure,Type>>call(Param param);
  Future<Either<Failure,Type>>end(EndPar endPar);

}