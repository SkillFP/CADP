program Ejercicio10;
{10. Realizar un programa modularizado que lea una secuencia de caracteres y verifique si cumple con el patrón
A$B#, donde:
- A es una secuencia de sólo letras vocales
- B es una secuencia de sólo caracteres alfabéticos sin letras vocales
- los caracteres $ y # seguro existen
Nota: en caso de no cumplir, informar que parte del patrón no se cumplió.}
Function EsVocal (c:char):boolean;
begin
    EsVocal:=(c='a') OR (c='A') OR (c='e') OR (c='E') OR (c='i') OR (c='I') OR (c='o') OR (c='O') OR (c='u') OR (c='U');
end;

Procedure ChequearA (var cumple:boolean);
var
    c:char;
begin
    writeln('Ingrese la secuencia A: '); readln(c);
    while (cumple) AND (c<>'$') do begin
        if (not EsVocal(c)) then
            cumple:=false
        else
            readln(c);
    end;
end;

Function EsLetra (c:char):boolean;
begin
    EsLetra:= ((c>='A') AND (c<='Z')) OR ((c>='a') AND (c<='z'));
end;

Procedure ChequearB (var cumple:boolean);
var
    c:char;
begin
    writeln('Ingrese la secuencia B: ');readln(c);
    while (cumple) AND (c<>'#') do begin
        if (not EsLetra(c)) then
            cumple:=false
        else
            readln(c);
    end;
end;

var
    cumple:boolean;
begin
    cumple:=true;
    ChequearA(cumple);
    if(cumple) then begin
        ChequearB(cumple);
        if (cumple) then
            writeln('La secuencia se cumple.')
        else
            writeln('La secuencia no se cumple en B.');
    end
    else
        writeln('La secuencia no se cumple en A.')
end.