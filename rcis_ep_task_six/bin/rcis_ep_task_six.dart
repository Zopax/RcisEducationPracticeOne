import 'dart:io';
import 'dart:math';

// void main() // task 1
// {
//   var file;
//   try
//   {
//     file = File('numsTask1.txt');
//   }
//   catch (e)
//   {
//     print("Не удалость открыть файл или файл отсуствует");
//   }

//   String words = file.readAsStringSync();
//   List<String> readingFile = words.split(' ');
//   print (readingFile);

//   for (int i = 0; i < readingFile.length; ++i)
//   {
//     if (readingFile[i].length % 2 != 0)
//     {
//       stdout.write("${readingFile[i]} ");
//     }
//   }
// }


// void main() //task 2
// {
//   File file = File('numsTask2.txt');
//   List<String> words = []; 
  
//   try
//   {
//   words = file.readAsLinesSync();
//   }
//   catch (e)
//   {
//     print("Ошибка чтения файла: \n$e");
//   }

//   for (int i = 0; i < words.length; ++i)
//   {
//     stdout.write("${words[i]} ");
//   }
// }



// void main() //task 3
// {
//   int num = 0;
//   stdout.write("Введите число: ");

//   try 
//   {
//   num = int.parse(stdin.readLineSync()!);
//   }
//   catch (e)
//   {
//     print("Введите число!");
//   }

//   if (num % 2 == 0 && num % 10 == 0)
//   {
//     print("True");
//   }
//   else
//   {
//     print("False");
//   }
// }


// void main() // task 4
// {
//   stdout.write("Введите положительное число a: ");
//   int numA = 0;

//   try
//   {
//     numA = int.parse(stdin.readLineSync()!);
//   }
//   catch (e)
//   {
//     print("Введено не число");
//     return;
//   }

//   if (numA < 0)
//   {
//     print("Введенное число не является положительным");
//     return;
//   }

//   stdout.write("Введите положительное число b: ");
//   int numB = 0;

//   try
//   {
//     numB = int.parse(stdin.readLineSync()!);
//   }
//   catch (e)
//   {
//     print("Введено не число");
//     return;
//   }

//   if (numB < 0)
//   {
//     print("Введенное число не является положительным");
//     return;
//   }

//   stdout.write("Введите положительное число (делитель): ");
//   int numDiv = 0;

//   if (numDiv < 0)
//   {
//     print("Введенное число не является положительным");
//     return;
//   }

//   try
//   {
//     numDiv = int.parse(stdin.readLineSync()!);
//   }
//   catch (e)
//   {
//     print("Введено не число");
//     return;
//   }
  
//   int summ = 0;

//   if (numA % numDiv == 0)
//   {
//     summ += numA;
//   }

//   if (numB % numDiv == 0)
//   {
//     summ += numB;
//   }

//   print(summ);
// }


// void main() // task 5
// {
//   stdout.write("Введите кол-во строк матрицы: ");
//   int n = 0;

//   try
//   {
//     n = int.parse(stdin.readLineSync()!);
//   }
//   catch (e)
//   {
//     print("Введите число!");
//     return;
//   }

//   if (n < 0)
//   {
//     print("Размер матрицы не может быть отрицательным, введено стандартное значение n");
//     n = 3; 
//   }

//   stdout.write("Введите кол-во столбцов матрицы: ");

//   int m = 0;

//   try 
//   {
//     m = int.parse(stdin.readLineSync()!);
//   }
//   catch (e)
//   {
//     print ("Введите число!");
//     return;
//   }

//   if (m < 0)
//   {
//     print("Размер матрицы не может быть отрицательным, введено стандартное значение m");
//     m = 4; 
//   }

//   List<List<int>> arrayA =  List.generate(n, (_) => List.generate(m, (_) => Random().nextInt(2)));

//   for (int i = 0; i < arrayA.length; ++i)
//   {
//     stdout.write("${arrayA[i]}\n");
//   }
//   print('\n');

//   int a = 0;

//   for (int i = 0; i < n; ++i)
//   {
//     int a = 0; 
//     for (int j = 0; j < m; ++j)
//     {
//         a += arrayA[i][j];
//     }
    
//     if (a % 2 == 0)
//     {
//       arrayA[i].add(0);
//     }
//     else
//     {
//       arrayA[i].add(1);
//     }
//   }

//    for (int i = 0; i < arrayA.length; ++i)
//   {
//     stdout.write("${arrayA[i]}\n");
//   }
// }


void main() // task 6
{
  stdout.write("Введите размер массива: ");
  int n = 0;
  try 
  {
    n = int.parse(stdin.readLineSync()!);
  }
  catch (e)
  {
    print ("Некорректный ввод данных");
    return;
  }

  if (n < 0)
  {
    n *= -1; 
  }

  List<double> array = List.generate(n, (i) => Random(i).nextDouble() * -256 + 128);
  List<double> negArray = [];
  List<double> posArray = [];
  print(array);

  for (int i = 0; i < array.length; ++i)
  {
    if (array[i] < 0)
    {
      negArray.add(array[i]);
    }
    else
    {
      posArray.add(array[i]);
    }
  }

  print("Массив с отрицательными числами: $negArray");
  print("Массив с положительными числами: $posArray");
}