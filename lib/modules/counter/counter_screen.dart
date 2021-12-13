import 'package:bmi_calculator/modules/counter/cubit/cubit.dart';
import 'package:bmi_calculator/modules/counter/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {

  int count=1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit() ,
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          if(state is CounterMinusStates) print('State is Minus${state.count}');

          if(state is CounterPlusStates) print('State is Plus${state.count}');

        },
        builder:  (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Counter',
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){
                    CounterCubit.getCubit(context).minus();
                  },
                      child: Text(
                        'Minus',
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      '${CounterCubit.getCubit(context).counter}',
                    ),
                  ),
                  TextButton(onPressed: (){
                    CounterCubit.getCubit(context).plus();
                  },
                      child: Text(
                        'plus',
                      )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
