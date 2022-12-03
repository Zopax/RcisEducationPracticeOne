import 'dart:io';
import 'dart:async';
import 'dart:convert';

// void main()async{ // Задание №1
  
//   int ticksAmount;
//   List<int> orgMassInt = [];
//   var file;
//   var output;
  
//   try{

//     file = File('Input.txt');
//     output = File('output.txt');

//   }catch(error){

//     print(error);
//     print('упс, ошибочка');

//   }

//   String firstLine = '';
//   List <String> list = file.readAsLinesSync();

//   try{

//     String firstLine =  list[0];

//   }catch(error){

//     print(error);
//     print('упс, ошибочка');

//   }
//   List<String> orgMass = firstLine.split(' ');

//   try{

//     ticksAmount = int.parse(list[1]); // Кол-во билетов
//     orgMassInt = orgMass.map(int.parse).toList(); //Числа выбранные организатором
//   }catch(error){

//     print(error);
//     print('упс, ошибочка');

//   }
  
//   int lucky = 0;
//   int unLucky = 0;
  
//   String luckUnluck = "";

//     for(int j = 2; j < list.length; ++j){
      
//       String lines =  list[j]; 
//       List<String> ticksNumb = lines.split(' ');
//        List<int> ticksNumbInt = [];
//       try{
//         List<int> ticksNumbInt = ticksNumb.map(int.parse).toList();
//       }catch(error){
//         print(error);
//         print('Упс, ошибочка');
//       }

//       for(int b = 0; b < orgMassInt.length; ++b){

//         for(int c = 0; c < ticksNumbInt.length; ++c){

//           if(orgMassInt[b] == ticksNumbInt[c]){
//               ++lucky;
//           }
//         }
//       }
//       if(lucky >= 3){
//         luckUnluck += 'Lucky\n';
//       }else{
//         luckUnluck += 'Unlucky\n';
//       }
//     }
//   output = await File('output.txt').writeAsString(luckUnluck);
// }




// void main(){ // Задание №2
//   var file;
//   try{
//     file = File('nums.txt');
//   }catch(error){
//     print(error);
//     print('Упс, ошибочка');
//   }
//   String a = file.readAsStringSync();
//   List<String> list = a.split(' ');
//   List<int> nums = [];
//   try{
//     nums = list.map(int.parse).toList();
//   }catch(error){
//     print(error);
//     print('Упс, ошибочка');
//   }
//   String b = '';

//   for(int i = 0; i < nums.length; ++i){

//     if(nums[i] % 2 == 0){
//       nums.remove(nums[i]);
//       --i;
//     }
//   }
  
//   for(int i = 0; i < nums.length; ++i){
//     b +='${nums[i]} ';
//   }
//   file.writeAsString(b);
// }


void main(){ //Задание №3

  var file = File('Height.txt');
  stdout.write('Введите числа через пробел: ');
  String f = stdin.readLineSync()!;
  List<String> mass = f.split(' ');
  List<int> heigth= [];
  try{
  heigth = mass.map(int.parse).toList();  
  }catch(error){
    print(error);
    print('Ты что глупый? Сказал же писать ЦИФИРКИ через ПРОБЕЛ');
  }
  file.writeAsString(f);
  print("Ваши числа: $heigth");
  int max = 0;

  for(int i = 0; i < heigth.length; ++i){
    for(int j = i + 1; j < heigth.length; ++j){
      if(heigth[i] < heigth[j] && max <  heigth[i] * (j - i)){
        max = heigth[i] * (j - i);
      }else if(heigth[i] > heigth[j] && max <  heigth[j] * (j - i)){
        max = heigth[j] * (j - i);
      }
    }
  }
  print(max);
}