import 'dart:io';
import 'dart:math';

// void main() //task 1
// {
//   var file = File('numsTask1.txt');
//   String nums = file.readAsStringSync();
//   List<String> readingFile = nums.split(' ');
//   List<int> fileParse = [];

//   try 
//   {
//     for (int i = 0; i < readingFile.length; ++i)
//     {
//       fileParse.add(int.parse(readingFile[i]));
//     }
//   }
//   catch (e)
//   {
//     print ("Ошибка: \n$e");
//   }


//   print (fileParse);

//   int index = 0;
//   int min = fileParse[0];

//   for(int i = 0; i < fileParse.length; ++i)
//   {
//     if (min > fileParse[i])
//     {
//       min = fileParse[i];
//       index = i;
//     }
//   }
//   print("Индекс минимального элемента: $index");

//   int multiplication = 1;

//   for( int i = index + 1; i < fileParse.length; ++i)
//   {
//     multiplication *= fileParse[i];
//   }

//   print (multiplication);
// }


void main() //task 2
{
  var file;
  try
  {
  file = File('numsTask2.txt');
  }
  catch (e)
  {
    print ("Файл не открылся или отсутствует");
    return;
  }
  String nums = file.readAsStringSync();
  List<String> readingFile = nums.split(';');
  List<double> fileParse = [];

  try 
  {
    for (int i = 0; i < readingFile.length; ++i)
    {
      fileParse.add(double.parse(readingFile[i]));
    }
  }
  catch (e)
  {
    print ("Ошибка: \n$e");
    return;
  }
  
  print (fileParse);

  for (int i = 0; i < fileParse.length - 1; ++i)
  {
    for (int j = 0; j < fileParse.length - i - 1; ++j)
    {
      if (fileParse[j] > fileParse[j + 1])
      {
        double a = fileParse[j];
        fileParse[j] = fileParse[j + 1];
        fileParse[j + 1] = a;
      }
    }
  }
  print(fileParse);
  file.writeAsString(fileParse.toString());
}

// void main() // task 3
// {
//   var file;

//   try
//   {
//   file = File('numsTask3.txt');
//   }
//   catch (e)
//   {
//     print ("Файл не открылся или отсутствует");
//     return;
//   }

//   String nums = file.readAsStringSync();
//   List<String> readingFile = nums.split(' ');
//   List<int> fileParse = [];
  
//   try 
//   {
//     for (int i = 0; i < readingFile.length; ++i)
//     {
//       fileParse.add(int.parse(readingFile[i]));
//     }
//   }
//   catch (e)
//   {
//     print ("Ошибка: \n$e");
//     return;
//   }

//   int min = fileParse[0];
//   int index = 0;

//   for (int i = 0; i < fileParse.length; ++i)
//   {
//     if (min > fileParse[i])
//     {
//       min = fileParse[i];
//       index = i;
//     }
//   }

//   print(fileParse);
//   print ("Инимальный индекс: $index");
//   int summ = 0;

//   for(int i = 0; i != index; ++i)
//   {
//     summ += fileParse[i];
//   }

//   print(summ);
//   print(summ / index);
// }



// void main() // task 4
// {
//   var file;

//   try
//   {
//   file = File('numsTask4.txt');
//   }
//   catch (e)
//   {
//     print ("Файл не открылся или отсутствует");
//     return;
//   }

//   String nums = file.readAsStringSync();
//   List<String> readingFile = nums.split(' ');
//   List<int> fileParse = [];
  
//   try 
//   {
//     for (int i = 0; i < readingFile.length; ++i)
//     {
//       fileParse.add(int.parse(readingFile[i]));
//     }
//   }
//   catch (e)
//   {
//     print ("Ошибка: \n$e");
//     return;
//   }

//   int max = fileParse[0];
//   int index = 0;
  
//   for (int i = 0; i < fileParse.length; ++i)
//   {
//     if (max < fileParse[i])
//     {
//       max = fileParse[i];
//       index = i;
//     }
//   }

//   int summ = 0;

//   for(int i = 0; i < fileParse.length; ++i)
//   {
//     if (fileParse[i] == (fileParse[index] - 1) || fileParse[i] == fileParse[index] + 1)
//     {
//       summ += fileParse[i];
//     }
//   } 

//   print(fileParse);
//   print(index);
//   print(summ);
// }



// void main() //task 5
// {
//    var file;

//   try
//   {
//   file = File('numsTask5.txt');
//   }
//   catch (e)
//   {
//     print ("Файл не открылся или отсутствует");
//     return;
//   }

//   String nums = file.readAsStringSync();
//   List<String> readingFile = nums.split(' ');
//   List<int> fileParse = [];
  
//   try 
//   {
//     for (int i = 0; i < readingFile.length; ++i)
//     {
//       fileParse.add(int.parse(readingFile[i]));
//     }
//   }
//   catch (e)
//   {
//     print ("Ошибка: \n$e");
//     return;
//   }

//   int min = fileParse[0];
//   int max = min;
//   int minIndex = 0;
//   int maxIndex = 0;

//   for (int i = 0; i < fileParse.length; ++i)
//   {
//      if (min > fileParse[i])
//      {
//       min = fileParse[i];
//       minIndex = i;
//      }
//      if (max < fileParse[i])
//      {
//       max = fileParse[i];
//       maxIndex = i;
//      }
//   }

//   int summ = 0; 
//   int count = 0;

//   if (minIndex < maxIndex)
//   {
//     for (int i = minIndex + 1; i != maxIndex; ++i)
//     {
//       summ += fileParse[i];
//       ++count;
//     }
//   }
//   else
//   {
//       for (int i = maxIndex + 1; i != minIndex; ++i)
//     {
//       summ += fileParse[i];
//       ++count;
//     }
//   }

//   print (fileParse);
//   print(summ);
//   print (minIndex);
//   print (maxIndex);
//   print("Среднее арифмитическое: ${summ / count}");
// }