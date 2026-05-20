programa{
    funcao inicio()
    {
    cadeia nomeAluno
    real nota, notaTotal, media
    inteiro aprovado = 0, reprovado = 0

  para (inteiro aluno = 1; aluno <= 5; aluno++){
     
    escreva("\nDigite o nome do ", aluno, "º aluno: ")
    leia(nomeAluno)

      notaTotal = 0

  para (inteiro i = 1; i <= 2; i++){
  
  faca
    {
    escreva("Digite a ", i, "ª nota do aluno ", nomeAluno, ": ")
      leia(nota)
    }
    
    enquanto (nota < 0 ou nota > 10)
      notaTotal = notaTotal + nota
    
    }
        media = notaTotal / 2
    se (media >= 7){
      
      escreva("Aluno aprovado! Média = ", media, "\n")
       aprovado++
       
        }senao{
        
      escreva("Aluno reprovado! Média = ", media, "\n")
         reprovado++
     }
    }
        
    escreva("\nTotal de alunos aprovados: ", aprovado)
    escreva("\nTotal de alunos reprovados: ", reprovado)
   
    }
    }
