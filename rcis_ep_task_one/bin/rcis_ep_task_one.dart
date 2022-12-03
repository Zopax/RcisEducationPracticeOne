import "dart:io";
import "dart:math";
//....................................../ПРАКТИЧЕСКАЯ 1.1\............................................\\
// void main() { // 1.1 Задание 1 
//   List<int> mass = []; 
//   Random b = new Random(); 
//   int min = 0; 

//   for (int i = 0 ; i < 10; ++i) 
//   { 
//     int randomNum = b.nextInt(100) + 1; 
//     mass.add(randomNum); 
//   } 
//   for (int j = 1; j < 10; ++j){ 
//     if(mass[j] < mass[min]){ 
//       min = j; 
//     } 
//   } 
//   print (mass); 
//   print ("Номер минимального элемента: $min"); 
// } 

// void main (){ // Задание №2 

//   List<int> mass= []; 
//   int a = 1; 
//   print("Что бы завершить программу введите 0: "); 
//   print("Введите любое число: "); 

//   while (a != 0){ 
//     try{ 
//       a = int.parse(stdin.readLineSync()!); 
//     }catch(formatException){ 
//       continue; 
//     } 
//     if (a == 0){ 
//       break; 
//     }else{ 
//       mass.add(a); 
//     } 
//   }  
//   print (mass); 
//   int summ = 0; 
//   int multi = 1; 
//   int count = 0; 
//   for(int i = 0; i < mass.length; ++i){ 
//     summ += mass[i]; 
//     multi *= mass[i]; 
//     ++count; 
//   } 
//   print("Сумма элементов: $summ"); 
//   print("Произведение элементов: $multi"); 
//   print("Среднее: ${summ / count}"); 
// }


// void main() { //задание 3 
//   List<String> mass = []; 
//   String a = ""; 
//   print ("Программа работает"); 
//   print('Вводите слова через enter, иначе будет бобо :(');
//   while(a != null){ 
//     a = stdin.readLineSync()!; 
//     if (a == ""){ 
//       print (mass); 
//       break; 
//     }else{ 
//     mass.add(a); 
//     } 
//   } 
//   int min = 0; 
//   int max = 0; 
//   for (int i = 0; i < mass.length; ++i){ 
//     if(mass[min].length > mass[i].length){ 
//       min = i; 
//     } 
//     if(mass[max].length < mass[i].length){ 
//       max = i; 
//     } 
//   } 
//   print ("Короткий элемент: ${mass[min]}"); 
//   print ("Длинный элемент: ${mass[max]}"); 
// }




// void main() { // задание №4
//   List<int> ms = rand();
//   stdout.write("[");
//   for (int i = 0; i < ms.length; ++i){
//     stdout.write(" ${ms[i]} ");
//   }
//   stdout.write("]");

// }

// List<int> rand(){
//   List<int> mass = [];
//   try{ 
//     stdout.write("Введите начало диапозона: ");
//     int? a = int.parse(stdin.readLineSync()!);
//     stdout.write("Введите конец диапозона:");
//     int? b = int.parse(stdin.readLineSync()!);
//     mass = List.generate(10, (_) => Random().nextInt(b - a + 1) + a);
//   }catch(formatException){
//     print("Ошиба: введите число ");
//   }


//   return mass;
// }



void main(){ //Задание №5
  stdout.write("Напишите предложение: ");
  String a = stdin.readLineSync()!;
  bool str = false;
  a += ' ';

  int b = 0;
  for(int i = 0; i < a.length; ++i){
      if(a[i] != ' '){
        str = true;
      }
      if(a[i] == ' ' && str == true){
        str = false;
        ++b;
      }
  }
  a = "Start ${a}End";
  print("($a)");
  print(b);
}