programa {
    inteiro quantidadeVendida
    cadeia nomeProduto
    real totalDePreco = 0
   
   
    funcao real calcularValorVenda(real precoUnitario, inteiro quantidadeVendida) {
        retorne quantidadeVendida * precoUnitario

   }
    
    funcao real calcularDesconto( real totalDePreco , real desconto){
      retorne  totalDePreco - (totalDePreco * desconto)


    }
      
    funcao inicio() {

        inteiro opcao = 0, quantidade 
        cadeia nomeProduto
        real precoUnitario
        real  desconto ,valorDesconto ,  valorAtual , valordoDesconto , totalCaixa = 0 
        

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
        
        totalDePreco +=  calcularValorVenda(precoUnitario,quantidade )
        
        
        escreva("total no caixa")totalCaixa = totalCaixa + calcularValorVenda(precoUnitario , quantidade)
        escreva("Valor da compra: R$ ", totalDePreco, "\n")
        escreva("Total no caixa: R$ ", totalCaixa, "\n")

        
     
    } senao se (opcao == 2) {
      
      escreva("Digite um desconto:")
      leia(desconto)

    se(totalDePreco >0){

      desconto = desconto / 100

      totalCaixa = totalCaixa - totalDePreco

      totalDePreco = calcularDesconto(totalDePreco, desconto)

      totalCaixa = totalCaixa + totalDePreco
      
      escreva("Desconto aplicado na última compra!\n")
      escreva("Novo valor da última compra: R$ ", totalDePreco, "\n")
      escreva("Total no caixa: R$ ", totalCaixa, "\n")

   
      }senao{
        escreva("Nenhuma compra foi registrada ainda.\n")
      }
    

    se(opcao == 3){
        escreva("total caixa : " , totalDePreco, "\n")
       
        }
       }
     }
   } enquanto (opcao != 4)
   escreva("Programa encerrado.\n")
 }
}
  