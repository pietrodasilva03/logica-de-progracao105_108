programa {

    real total = 0

    funcao real calcularSubTotal(real preco, inteiro quantidade) {
        retorne preco * quantidade
    }

    funcao inicio() {

        inteiro opcao = 0, quantidade
        cadeia nomeProduto
        real precoUnitario

        faca {

      escreva("------ Compras ------\n")
      escreva("1 - Fazer pedido \n")
      escreva("2 - Calcular total \n")
      escreva("3 - Sair \n\n")

      escreva("Escolha uma opção: ")
       leia(opcao)

        se (opcao < 1 ou opcao > 3) {

      escreva("Opção inválida!\n")

      } senao se (opcao != 3) {

      se (opcao == 1) {

        escreva("Nome do produto: ")
        leia(nomeProduto)

        escreva("Preço unitário: ")
        leia(precoUnitario)

        escreva("Quantidade: ")
        leia(quantidade)

        total = total + calcularSubTotal(precoUnitario, quantidade)

      // total += calcularSubTotal(precoUnitario, quantidade)

        } senao se (opcao == 2) {

        se (total == 0) {

        escreva("Nenhum pedido realizado \n")

        } senao {

        escreva("Total: ")

          inteiro reais = total
          real centavos = total - reais

          escreva("R$ ", reais, ",", centavos, "\n")
         }
       }
     }

   } enquanto (opcao != 3)
 }
}