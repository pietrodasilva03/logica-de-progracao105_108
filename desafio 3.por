programa {
    inteiro quantidadeVendida
    cadeia nomeProduto
    real totalDePreco = 0
    inteiro percentual
   
    funcao real calcularValorVenda(real precoUnitario, inteiro quantidadeVendida) {
        retorne quantidadeVendida * precoUnitario

   }
    
    funcao real calcularDesconto( inteiro totalDePreco , real desconto){
      retorne  totalDePreco - (totalDePreco * desconto)


    }
      
    funcao inicio() {

        inteiro opcao = 0, quantidade 
        cadeia nomeProduto
        real precoUnitario
        inteiro desconto ,valorDesconto ,  valorAtual , valordoDesconto , totalCaixa
        

    faca {

      
      escreva("\n\n ------ Compras ------\n\n")
      escreva("1 - registrar venda:\n")
      escreva("2 - aplicar desconto:\n")
      escreva("3 - exibir total de caixa: \n")
      escreva("4 - Sair \n\n")

      escreva("Escolha uma opção: \n ")
       leia(opcao)

      se (opcao < 1 ou opcao > 4) {

      escreva("Opção inválida!\n")

    }senao se(opcao != 4) {
      

      se(opcao == 1) {
        escreva("Nome do produto: ")
        leia(nomeProduto)
        escreva("Preço unitário: ")
        leia(precoUnitario)
        escreva("Quantidade: ")
        leia(quantidade)
        
        escreva("total no caixa :")totalDePreco +=  calcularValorVenda(precoUnitario,quantidade )
        totalCaixa = totalCaixa + calcularValorVenda(precoUnitario , quantidade)
        escreva(totalDePreco)
        escreva(valorAtual , "\n" , totalCaixa)

        
     
        } senao se (opcao == 2) {
        escreva("Digite um desconto:")
        leia(desconto)
        valorDesconto = valorAtual / 100
        valorDesconto = calcularDesconto(valorAtual ,valorDesconto )
        valordoDesconto = valorAtual - totalDePreco
        totalCaixa = totalCaixa - valorDesconto 
    

        se(opcao == 3){
        escreva("total caixa : " , totalDePreco)
       
        }
       }
     }

   } enquanto (opcao != 4)
 }
}
  