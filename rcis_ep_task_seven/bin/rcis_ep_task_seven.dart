import 'dart:io';
import 'dart:convert';

void main()
{
  File openFile = File("DaysInfo.json");
  String jsonInput = openFile.readAsStringSync();
  Map <String, dynamic> jsonData = {};
  Map <String, dynamic> errorData = 
  {
    "Tasks": [
        { 

        }
      ]
  }; 

  try
  {
    jsonData = jsonDecode(jsonInput);
  }
  catch(e)
  {
    openFile.writeAsStringSync(jsonEncode(errorData)); 
    print("Файл с данными пустой, перезапустите программу");
    return;
  }

  jsonData = jsonDecode(jsonInput);
  
  while(true)
  {
    print ("Меню:");
    print ("Новая задача - /newTask");
    print ("Завершить программу - /exit");

    stdout.write("Введите команду: ");
    String a = stdin.readLineSync()!;
      
    switch(a)
    {
      case "/newTask":
      
        int newTaskInput = 2;

        while (newTaskInput != 0)
        {
          print("1 - создать новую задачу");
          print("0 - выйти в главное меню");
          newTaskInput = int.parse(stdin.readLineSync()!);
          

          if (newTaskInput == 1)
          {
            stdout.write("введите имя задачи: ");
            String name = stdin.readLineSync()!;
            stdout.write("введите описание задачи: ");
            String desc = stdin.readLineSync()!;
            stdout.write("введите дату выполнения задачи: ");
            DateTime date = DateTime.now();
            
            try
            {
            date = DateTime.parse(stdin.readLineSync()!);
            }
            catch(e)
            {
              print("\nНекорректный ввод даты");
              print("Пример написания даты: гггг-мм-дд\n");
            }

            print(jsonData["Tasks"]);
            List<Task> listClass = [];
            
            for (int i = 0; i < jsonData["Tasks"].length; ++i)
            {
              listClass.add(Task.fromJson(jsonData["Tasks"][i]));
            }

            listClass.add(Task(name, desc, date));

            jsonData["Tasks"] = listClass;
            openFile.writeAsStringSync(jsonEncode(jsonData));
          }
        }  
        break;

      case "/exit" :

        print("Программа завершена");
        exit(0); 
    }  
  }
}

class Task
{
  String name;
  String desc;
  DateTime date; 

  Task(this.name, this.desc, this.date);

  Task.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        desc = json['desc'],
        date = DateTime.parse(json['date']);

  Map<String, dynamic> toJson() => 
  {
    'name': name,
    'desc': desc,
    'date': date.toString(),
  };
}