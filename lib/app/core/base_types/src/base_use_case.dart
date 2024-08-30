abstract class BaseUseCase<In, Ret> {
  Ret call(In params);
}
