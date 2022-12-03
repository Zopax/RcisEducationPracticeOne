import "dart:io";
import 'dart:math';
//.............................................ПРАКТИЧЕСКОЕ ЗАДАНИЕ №2...........................................\\
// void main() { // Задание №1

//   List<int> mass = [];
//   for(int i = 1000; i > 300; i -= 7){
//     mass.add(i);
//   }

//   print(mass);
// }


// void main(){ // задание №2
//   List<int> mass = []; 
//   for(int i = 0; i < 10; ++i){
//     mass.add(1 + 2 * i);
//   }
//   print(mass);
// }


// void main(){ //Задание №3
//   List<List<int>> mass = List.generate(4, (_) => List.filled(4, 1));

//   for(int i = 1; i < 4; ++i){
//     for(int j = 1; j < 4; ++j){
//       mass[i][j] = mass[i-1][j] + mass[i][j-1];
//     }
//   }
//   for(int i = 0; i < 4; ++i ){
//     for(int j = 0; j < 4; ++j){
//       stdout.write("${mass[i][j]}\t");
//     }
//     stdout.write("\n");
//   }
// }

// void main(){ // Задание №4
//   List<List<int>> mass = List.generate(12, (_) => List.generate(30, (_) => Random().nextInt(60) - 30));
//   print(mass);
//   print(midTemp(mass));
//   print(midTemp(mass)..sort());
//   }

//   List midTemp(List<List<int>> mass){

//   List<int> massMid = List.filled(12, 0);

//   for (int i = 0; i < 12; ++i){
//     for (int j = 0; j < 30; ++j){
//       massMid[i] += mass[i][j];
//     }
//     massMid[i] = massMid[i] ~/ 12;
//   }
//   return massMid;
// }

// void main(){ // Задание №5

//   var map = {};
//   map["Январь   "] = List.generate(30, (_) => Random().nextInt(60) - 30);
//   map["Февраль  "] = List.generate(30, (_) => Random().nextInt(60) - 30);
//   map["Март     "] = List.generate(30, (_) => Random().nextInt(60) - 30);
//   map["Апрель   "] = List.generate(30, (_) => Random().nextInt(60) - 30);
//   map["Май      "] = List.generate(30, (_) => Random().nextInt(60) - 30);
//   map["Июнь     "] = List.generate(30, (_) => Random().nextInt(60) - 30);
//   map["Июль     "] = List.generate(30, (_) => Random().nextInt(60) - 30);
//   map["Август   "] = List.generate(30, (_) => Random().nextInt(60) - 30);
//   map["Сентябрь "] = List.generate(30, (_) => Random().nextInt(60) - 30);
//   map["Октябрь  "] = List.generate(30, (_) => Random().nextInt(60) - 30);
//   map["Ноябрь   "] = List.generate(30, (_) => Random().nextInt(60) - 30);
//   map["Декабрь  "] = List.generate(30, (_) => Random().nextInt(60) - 30);

//   for(var key in map.keys){
//     print("$key ${map[key]}");
//   }
//   print(midTemp(map));
// }

// Map midTemp(map){
//   num a = 0;
//     var mapMid = {};

//   for (var key in map.keys){
//     for(int i = 0; i < 30; ++i){
//       a += map[key][i];
//     }
//     a ~/= 30; 
//     mapMid.addAll({key : a});
//   }
//   return mapMid;
// }