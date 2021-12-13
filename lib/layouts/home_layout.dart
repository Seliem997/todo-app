import 'package:bmi_calculator/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:bmi_calculator/modules/done_tasks/done_tasks_screen.dart';
import 'package:bmi_calculator/modules/new_tasks/new_tasks_screen.dart';
import 'package:bmi_calculator/shared/components/components.dart';
import 'package:bmi_calculator/shared/components/constants.dart';
import 'package:bmi_calculator/shared/cubit/cubit.dart';
import 'package:bmi_calculator/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

class HomeLayout extends StatelessWidget  {


  var scaffoldKey=GlobalKey<ScaffoldState>();
  var formKey=GlobalKey<FormState>();
  var titleController=TextEditingController();
  var timeController=TextEditingController();
  var dateController=TextEditingController();


  @override

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit,AppState>(
        listener: (BuildContext context,AppState state){
          if(state is AppInsertDatabaseState){
            Navigator.pop(context);
          }
        },
        builder: (BuildContext context,AppState state){
          AppCubit cubit=AppCubit.get(context);
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title: Text(
                cubit.titles[cubit.currentIndex],
              ),
            ),
            body: /*tasks.length==0*/state is AppLoadingGetDatabaseState ? Center(child: CircularProgressIndicator()) : cubit.screens[cubit.currentIndex],
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if(cubit.isBottomSheetShown){
                  if(formKey.currentState!.validate()){
                    cubit.insertToDatabase(taskTitle: titleController.text, taskTime: timeController.text, taskDate: dateController.text);
                    // insertToDatabase(taskDate: dateController.text, taskTitle: titleController.text, taskTime: timeController.text).then((value) {
                    //   Navigator.pop(context);
                    //   isBottomSheetShown=false;
                    // }).catchError((onError){
                    //   print('Error in insert to database is ${onError.toString()}');
                    // });

                  }

                }else{
                  scaffoldKey.currentState!.showBottomSheet(
                        (context) => Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(20),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                defaultFormField(controller: titleController,
                                  type: TextInputType.text,
                                  label: 'Task Title ',
                                  prefixIcn: Icons.title,
                                  validate: (value){
                                    if(value.isEmpty){
                                      return 'title must not be empty';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                defaultFormField(controller: timeController,
                                  type: TextInputType.datetime,
                                  label: 'Time title',
                                  prefixIcn: Icons.watch_later_outlined,
                                  tap: (){
                                    showTimePicker(context: context, initialTime: TimeOfDay.now(),
                                    ).then((value) {
                                      timeController.text=value!.format(context);
                                    }).catchError((error){
                                      print('error is ${error.toString()}');
                                    });
                                  },
                                  validate: (value){
                                    if(value.isEmpty){
                                      return 'time must not be empty';
                                    }
                                  },
                                ),
                                SizedBox(height: 15.0,),
                                defaultFormField(
                                  controller: dateController,
                                  type: TextInputType.datetime,
                                  label: 'date',
                                  prefixIcn: Icons.calendar_today,
                                  validate: (value){
                                    if(value.isEmpty){
                                      return 'date must not be empty';
                                    }
                                  },
                                  tap: (){
                                    showDatePicker(context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime.parse('2025-12-30'),
                                    ).then((value) {
                                      dateController.text=DateFormat.yMMMd().format(value!);
                                      print(DateFormat.yMMMd().format(value));
                                    }).catchError((onError){
                                      print('Error in date is${onError.toString()}');
                                    });
                                  },

                                )
                              ],
                            ),
                          ),
                        ),
                    elevation: 20.0,
                  ).closed.then((value) {
                    cubit.changeIconBottomSheet(isShow: false);
                  });
                  cubit.changeIconBottomSheet(isShow: true);
                }

              },
              child: Icon(
                cubit.isBottomSheetShown ? Icons.add : Icons.edit ,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (index){

                cubit.changeIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: "tasks",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.check_circle_outline),
                  label: "done",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.archive_outlined),
                  label: "archived",
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Future<String> getName() async{
  //   return 'mostafa Seliem';
  // }


}
