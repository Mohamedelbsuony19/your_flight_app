import 'package:dartz/dartz.dart';

import '../network/failure.dart'; 

typedef FutureEitherFailureOrType<T> = Future<Either<Failure, T>>;
