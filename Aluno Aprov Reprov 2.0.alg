algoritmo "Aluno_Aprov_Reprov"

var
   Nt: vetor [1..12,1..4] de real
   Nomes: vetor [1..12] de caractere
   Medias: vetor [1..12] de real
   Nome: Caractere
   Cont1, Cont2, Aprov, Reprov: inteiro

inicio
      Escreva ("Digite Seu Nome: ")
      Leia (Nome)
      
      //Leitura dos nomes e as notas de cada aluno
      PARA Cont1 DE 1 ATE 12 FACA
           ESCREVA("Digite o nome da ", Cont1, "º Disciplina: ")
           LEIA(nomes[Cont1])
           LimpaTela
           PARA Cont2 DE 1 ATE 4 FACA
                ESCREVA("Digite a nota do ", Cont2, "º bimestre de ", nomes[Cont1], ": ")
                Leia (Nt[Cont1,Cont2])
           FIMPARA
           
           //CÁLCULO DAS MÉDIAS
           medias[Cont1] := (Nt[Cont1, 1] + Nt[Cont1, 2] + Nt[Cont1, 3] + Nt[Cont1, 4]) / 4
           Se (Medias[Cont1] >= 7.5) Entao
                Aprov <- Aprov + 1
           Senao
                Reprov <- Reprov + 1
           Fimse
           LimpaTela
      FIMPARA

         Se (Reprov > 2) entao
         EscrevaL ("|================================================|")
         EscrevaL ("|    LAMENTAMOS (",Nome, ") VOCÊ FOI REPROVADO   |")
         EscrevaL ("|================================================|")
         EscrevaL ("Sua reprovação se deu por não atingir a media minima de 7,5 em ",Reprov, " materias!")
         EscrevaL
         EscrevaL
         EscrevaL ("|================================================|")
            Para Cont1 de 1 ate 12 faca
              Se (Medias[Cont1] < 7.5) entao
                EscrevaL ("(", Nomes[Cont1]:10,") |Notas: Nt1(",Nt[Cont1, 1]:3,") Nt2(",Nt[Cont1, 2]:3,") Nt3(",Nt[Cont1, 3]:3,") Nt4",Nt[Cont1, 2]:3,"|Media: (", Medias[Cont1]:3,") [Reprovado]")
                EscrevaL ("|--------------------------------------------------|")
              Fimse
            FimPara

            Para Cont1 de 1 ate 12 faca
              Se (Medias[Cont1] >= 7.5) Entao
                EscrevaL ("(", Nomes[Cont1]:10,") |Media: (", Medias[Cont1]:3,") [Aprovado]")
                EscrevaL ("|--------------------------------------------|")
              Fimse
            Fimpara
          EscrevaL ("|=================================================|")
         Fimse
      Fimse
      Senao
        Se (Reprov <= 2) Entao
         EscrevaL ("|================================================|")
         EscrevaL ("      PARABENS ",Nome," VOCÊ ESTA APROVADO      ")
         EscrevaL ("|================================================|")
         EscrevaL
         EscrevaL ("|================================================|")
         EscrevaL ("|               RELATORIO FINAL                  |")
         EscrevaL ("|================================================|")
            Para Cont1 de 1 ate 12 faca
              Se (Medias[Cont1] >= 7.5) entao
                EscrevaL ("|Materia: (", Nomes[Cont1]:10,") |Media: (", Medias[Cont1]:3,") [Aprovado]|")
                EscrevaL ("|--------------------------------------------|")
              Senao
                EscrevaL ("(", Nomes[Cont1]:10,") |Notas: Nt1(",Nt[Cont1, 1]:3,") Nt2(",Nt[Cont1, 2]:3,") Nt3(",Nt[Cont1, 3]:3,") Nt4",Nt[Cont1, 2]:3,"|Media: (", Medias[Cont1]:3,") [Reprovado]")
                EscrevaL ("|--------------------------------------------|")
              Fimse
            FimPara
         Fimse
fimalgoritmo
