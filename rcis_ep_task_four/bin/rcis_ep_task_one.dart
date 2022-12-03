import 'dart:developer';
import "dart:io";
import "dart:math";

// void main() //task 1
// {
//   int n = 0;
//   List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]; 
//   print("Введите целое положительое число от 1 до 20: ");

//   try
//   {
//   n = int.parse(stdin.readLineSync()!);
//   }
//   catch (e)
//   {
//     print("Циферки пиши!");
//     return;
//   } 

//   if (n <= 0)
//   {
//     print("Сказал же положительное!!!");
//     return;
//   }
//   else if (n > 20)
//   {
//     print("Меньше 20 надо...");
//     return;
//   }

//   int multiplication = 1;

//   for (int i = 0; i < nums.length; ++i)
//   {
//     if (nums[i] % 3 == 0 && nums[i] < n)
//     {
//       multiplication *= nums[i];
//     }
//   }

//   print(nums);
//   print(multiplication);
// }



// void main () // task 2
// {
//   var file;

//   try
//   {
//     file = File('NumsTask2.txt');
//   }
//   catch(error)
//   {
//     print(error);
//     print('упс, ошибочка');
//   }

//   String nums = file.readAsStringSync();
//   List<String> readingFile = nums.split(';');
//   List<double> numsParse = [];
  
//   try
//   {
//     for (int i = 0; readingFile[i] != '0'; ++i)
//     {
//       numsParse.add(double.parse(readingFile[i]));
//     }
//   }
//   catch (e)
//   {
//     print("Ошибка");
//     return;
//   }
//   print(numsParse);

//   double summ = 0;

//   for (int i = 0; i < numsParse.length; ++i)
//   {
//     if (numsParse[i] >= 0)
//     {
//       summ += numsParse[i];
//     }
//   }

//   print(summ);
// }




// void main() //task 3
// {
//   var file;
//   try
//   {
//     file = File('NumsTask3.txt');
//   }
//   catch(error)
//   {
//     print(error);
//     print('упс, ошибочка');
//   }

//   String nums = file.readAsStringSync();
//   List<String> readingFile = nums.split(',');
//   List<int> numsParse = [];
  
//   try 
//   {
//   for (int i = 0; readingFile[i] != '0'; ++i)
//   {
//     numsParse.add(int.parse(readingFile[i]));
//   }
//   }
//   catch(e)
//   {
//     print("Ошибка: \n$e");
//     return;
//   }
//   print(numsParse);

//   int min = numsParse[0];
//   int max = min;

//   for (int i = 1; i < numsParse.length; ++i)
//   {
//     if (numsParse[i] > max)
//     {
//       max = numsParse[i];
//     }
//     if (numsParse[i] < min)
//     {
//       min = numsParse[i];
//     }
//   }
//   print("Минимальный элемент: $min");
//   print("Максимальный элемент: $max");
//   print("Отношение минимальноого числа к максимальному: ${min / max}");
//   print("Отношение максимального числа к минимальному: ${max / min}");
// }



// void main() //task 4
// {
//   var file;
//   try
//   {
//     file = File('NumsTask4.txt');
//   }
//   catch(error){
//     print(error);
//     print('ОШИБКА НОЛЬ НОЛЬ НОЛЬ НОЛЬ НОЛЬ ИКС НОЛЬ ОДИН');
//   }

//   String nums = file.readAsStringSync();
//   List<String> readingFile = nums.split(' ');
//   List<int> numsParse = [];
  
//   try
//   {
//   for (int i = 0; i < readingFile.length; ++i)
//   {
//     numsParse.add(int.parse(readingFile[i]));
//   }
//   }
//   catch (e)
//   {
//     print("Ошибка: \n$e");
//   }

//   print(numsParse);
//   int count = 0;

//   for (int i = 0; i < numsParse.length - 1; ++i)
//   {
//     if (numsParse[i] == numsParse[i + 1])
//     {
//       ++count;
//     }
//   }

//   print(count);
// }


void main() //task 5
{
  double a = 0;
  stdout.write("Введите координату a: ");
  try
  {
    a = double.parse(stdin.readLineSync()!);
  }
  catch (error)
  {
    print("Введите числа");
    return;
  }

  double b = 0;
  stdout.write("Введите координату b: ");
  try
  {
    b = double.parse(stdin.readLineSync()!);
  }
  catch(error)
  {
    print("Введите число");
  }

  if (a >= -1 && a <= 3 && b >= -2 && b <= 4)
  {
    print("Координата (a;b) принадлежит выделенной области");
  }
  else
  {
    print("Координата (a;b) не принадлежит выделенной области");
  }
}


// void main() //task 6
// {
//   double a = 0;
//   stdout.write("Введите координату a: ");
//   try
//   {
//     a = double.parse(stdin.readLineSync()!);
//   }
//   catch (error)
//   {
//      print("\nОшибка");
//     print("\nВведите числа");
//     return;
//   }

//   double b = 0;
//   stdout.write("Введите координату b: ");
//   try
//   {
//     b = double.parse(stdin.readLineSync()!);
//   }
//   catch(error)
//   {
//     print("\nОшибка");
//     print("\nВведите число");
//     return;
//   }

//   if (b >= -3 && b <= 2 * a + 2 && b <= -2 * a + 2)
//   {
//     print ("Точка принадлежит выделенной области");
//   }
//   else
//   {
//     print("Точка не принадлежит выделеннйо области");
//   }
// }