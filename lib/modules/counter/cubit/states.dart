
abstract class CounterStates
{
}

class CounterInitialStates extends CounterStates
{
}

class CounterPlusStates extends CounterStates{
  final int count;
  CounterPlusStates(this.count);
}

class CounterMinusStates extends CounterStates{
  final int count;

  CounterMinusStates(this.count);
}
