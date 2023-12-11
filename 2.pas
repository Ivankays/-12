program zad2;
var
  N, K, i, j: integer;
  outputFile: text;
begin
  write('Введите количество строк (N): ');
  readln(N);
  write('Введите длину строки (K): ');
  readln(K);
  assign(outputFile, 'stars.txt');
  rewrite(outputFile);
  for i := 1 to N do
  begin
    for j := 1 to K do
      write(outputFile, '*');
    writeln(outputFile);
  end;
  close(outputFile);
  writeln('Файл успешно создан. Строки заполнены звездочками.');
  writeln('Путь к файлу: ', GetCurrentDir, '\stars.txt');
end.