program Disciplinas;
uses Crt;

var
B, D: array[1..13] of string;
cad: integer;
r: integer;
Nt: array [1..12,1..4] of real;
Nomes: array [1..12] of string;
Medias: array [1..12] of real;
Nome: string;
Cont1, Cont2, Aprov, Reprov: integer;

procedure MostraFileira();
var i: integer;
begin
   D[1] := 'Portugu�s';
   D[2] := 'Matem�tica';
   D[3] := 'Reda��o';
   D[4] := 'Literatura';
   D[5] := 'F�sica';
   D[6] := 'Qu�mica';
   D[7] := 'Biologia';
   D[8] := 'E. F�sica';
   D[9] := 'Filosofia';
   D[10] := 'Sociologia';
   D[11] := 'L. Qu�mica';
   D[12] := 'L. F�sica';
   for i := 1 to 12 do begin
      if (B[i] = '') then begin
         writeln ('                                             [',i, ']->[ ', D[i]:10, ' ]');
      end else begin
         writeln ('                                             [ --------------- ]');
      end;
   end;
   writeln();
   writeln('<------------------------------------------------------------------------------------------------------------>');
end;

begin
	TextColor(Brown);
   Cont1 := 1;
   write ('                                  [Digite Seu Nome]: ');
   readln (Nome);

   repeat
      ClrScr;
      MostraFileira();
      write('Digite o (N�MERO) da Disciplina: ');
      readln(cad);
      if (B[cad]='') then begin
         B[cad] := 'X';

         nomes[Cont1] := D[Cad];
         ClrScr;
         for Cont2 := 1 to 4 do begin
            write('Digite a nota do ', Cont2, '� bimestre de ', nomes[Cont1], ': ');
            readln (Nt[Cont1,Cont2]);
         end;

         {C�LCULO DAS M�DIAS}
         medias[Cont1] := (Nt[Cont1, 1] + Nt[Cont1, 2] + Nt[Cont1, 3] + Nt[Cont1, 4]) / 4;
         if (Medias[Cont1] >= 7.5) then begin
            Aprov := Aprov + 1;
         end else begin
            Reprov := Reprov + 1;
         end;
         ClrScr;
      end else begin
         Cont1 := Cont1 + 1;
         Cont1 := Cont1 - 2;
      end;
      Cont1 := Cont1 + 1;
   until (Cont1 = 13);

   if (Reprov > 2) then begin
      writeln ('|================================================|');
      writeln ('|    LAMENTAMOS (',Nome, ') VOC� FOI REPROVADO   |');
      writeln ('|================================================|');
      writeln ('Sua reprova��o se deu por n�o atingir a media minima de 7,5 em ',Reprov, ' materias!');
      writeln;
      writeln;
      writeln ('|================================================|');
      for Cont1 := 1 to 12 do begin
         if (Medias[Cont1] < 7.5) then begin
         		TextColor(Red);
            writeln ('(', Nomes[Cont1]:10,') |Notas: Nt1(',Nt[Cont1, 1]:2:2,') Nt2(',Nt[Cont1, 2]:2:2,') Nt3(',Nt[Cont1, 3]:2:2,') Nt4(',Nt[Cont1, 2]:2:2,')|Media: (', Medias[Cont1]:2:2,') [Reprovado]');
            writeln ('|--------------------------------------------------|');
         end;
      end;

      for Cont1 := 1 to 12 do begin
         if (Medias[Cont1] >= 7.5) then begin
            if (Medias[Cont1] >= 7.5) and (Medias[Cont1] < 8.5) then begin 
              TextColor(Green);
              writeln ('(', Nomes[Cont1]:10,') |Media: (', Medias[Cont1]:2:2,') [Aprovado]');
              writeln ('|--------------------------------------------|');
            end else begin
   							if (Medias[Cont1] >= 8.5) then begin
                 TextColor(LightBlue);
              		writeln ('(', Nomes[Cont1]:10,') |Media: (', Medias[Cont1]:2:2,') [Aprovado]');
              		writeln ('|--------------------------------------------|');
   							end;
            End;
         end;
      end;
      writeln ('|=================================================|');
   end;

   if (Reprov <= 2) then begin
      writeln ('|================================================|');
      writeln ('      PARABENS ',Nome,' VOC� ESTA APROVADO      ');
      writeln ('|================================================|');
      writeln;
      writeln ('|================================================|');
      writeln ('|               RELATORIO FINAL                  |');
      writeln ('|================================================|');
      for Cont1 := 1 to 12 do begin
       for Cont1 := 1 to 12 do begin
         if (Medias[Cont1] < 7.5) then begin
         		TextColor(Red);
            writeln ('(', Nomes[Cont1]:10,') |Notas: Nt1(',Nt[Cont1, 1]:2:2,') Nt2(',Nt[Cont1, 2]:2:2,') Nt3(',Nt[Cont1, 3]:2:2,') Nt4(',Nt[Cont1, 2]:2:2,')|Media: (', Medias[Cont1]:2:2,') [Reprovado]');
            writeln ('|--------------------------------------------------|');
         end;
      end;

      for Cont1 := 1 to 12 do begin
         if (Medias[Cont1] >= 7.5) then begin
            if (Medias[Cont1] >= 7.5) and (Medias[Cont1] < 8.5) then begin 
              TextColor(Green);
              writeln ('(', Nomes[Cont1]:10,') |Media: (', Medias[Cont1]:2:2,') [Aprovado]');
              writeln ('|--------------------------------------------|');
            end else begin
   							if (Medias[Cont1] >= 8.5) then begin
                 TextColor(LightBlue);
              		writeln ('(', Nomes[Cont1]:10,') |Media: (', Medias[Cont1]:2:2,') [Aprovado]');
              		writeln ('|--------------------------------------------|');
   							end;
            End;
         end;
      end;
      writeln ('|=================================================|');
   end;
   end;
end.