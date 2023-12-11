program lab12zad6;
var
  inputFile, tempFile: text;
  lineContent: string;
begin
  assign(inputFile, 'input.txt');
  reset(inputFile);
  assign(tempFile, 'temp.txt');
  rewrite(tempFile);
  while not eof(inputFile) do
  begin
    readln(inputFile, lineContent);
    if lineContent <> '' then
    begin
      writeln(tempFile, lineContent);
    end;
  end;
  close(inputFile);
  close(tempFile);
  erase(inputFile);
  rename(tempFile, 'input.txt');  
  writeln('Пустые строки были удалены из файла');
end.