import 'dart:io';

class IOService {

  static void write<T>(T str){
    stdout.write(str);
  }

  static String read<T>(){
    return stdin.readLineSync() ?? "";
  }
}
