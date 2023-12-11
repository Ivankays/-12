program lab12zad3;
var
  fileText: text;
  S: string;
begin
  assign(fileText, 'input.txt');
  append(fileText);  
  writeln('Введите строку S:');
  readln(S);  
  writeln(fileText, S);
  close(fileText);  
  writeln('Строка добавлена в файл');  
end.