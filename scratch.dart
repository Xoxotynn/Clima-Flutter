import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String t2res = await task2();
  task3(t2res);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration waitPeriod = Duration(seconds: 3);
  String res;

  Future.delayed(waitPeriod, () {
    res = 'task 2 data';
    print('task 2 comlete');
  });

  return res;
}

void task3(String data) {
  String result = 'task 3 data';
  print('Task 3 complete with $data');
}
