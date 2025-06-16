import 'package:dartz/dartz.dart';
import '../utils/exports.dart';

// Alias de tipo para un Future que puede contener un Failure o un valor T
typedef ResultFuture<T> = Future<Either<Failure, T>>;

// Alias para un ResultFuture que no retorna valor (void)
typedef ResultVoid = ResultFuture<void>;

// Alias para un Map con llaves String y valores dinámicos
typedef DataMap = Map<String, dynamic>;

// Alias para un Future que puede contener una APIException o un valor T
typedef ResultNetwork<T> = Future<Either<APIException, T>>;

// Alias para un ResultNetwork que no retorna valor (void)
typedef ResultNetworkVoid = ResultNetwork<void>;
