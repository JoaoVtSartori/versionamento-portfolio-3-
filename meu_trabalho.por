programa
{

    funcao inicio()
    {

        inteiro vida = 100
        inteiro acertos = 0

        inteiro caderno = 1
        inteiro tocha = 1
        inteiro bussola = 1

        inteiro escolha
        inteiro caminho
        inteiro item

        enquanto (vida > 0 e acertos < 5)
        {

            escreva("\nLABIRINTO MAGICO")
            escreva("\n====================")
            escreva("\nVida: ", vida)
            escreva("\nAcertos: ", acertos, "/5")

            escreva("\n\n1 - Escolher caminho")
            escreva("\n2 - Usar item")
            escreva("\n3 - Descansar")

            leia(escolha)

            se (escolha == 1)
            {

                escreva("\nEscolha um caminho:")
                escreva("\n1 - Esquerda")
                escreva("\n2 - Centro")
                escreva("\n3 - Direita")

                leia(caminho)

                se (caminho == 2)
                {
                    escreva("\nCaminho correto!")
                    acertos++
                }
                senao
                {
                    escreva("\nArmadilha! Voce perdeu 20 de vida.")
                    vida = vida - 20
                }

            }

            senao se (escolha == 2)
            {

                escreva("\n\nITENS")
                escreva("\n1 - Caderno Magico (", caderno, ")")
                escreva("\n2 - Tocha (", tocha, ")")
                escreva("\n3 - Bussola (", bussola, ")")

                leia(item)

                se (item == 1)
                {

                    se (caderno > 0)
                    {
                        escreva("\nO caderno revela que o caminho correto e o CENTRO.")
                        caderno--
                    }
                    senao
                    {
                        escreva("\nItem esgotado!")
                    }

                }

                senao se (item == 2)
                {

                    se (tocha > 0)
                    {
                        escreva("\nA tocha ilumina o local e evita uma armadilha.")
                        tocha--
                    }
                    senao
                    {
                        escreva("\nItem esgotado!")
                    }

                }

                senao se (item == 3)
                {

                    se (bussola > 0)
                    {
                        escreva("\nA bussola elimina um caminho errado.")
                        escreva("\nO caminho 1 nao e o correto.")
                        bussola--
                    }
                    senao
                    {
                        escreva("\nItem esgotado!")
                    }

                }

            }

            senao se (escolha == 3)
            {

                escreva("\nVoce descansou e recuperou 10 de vida.")
                vida = vida + 10

                se (vida > 100)
                {
                    vida = 100
                }

            }

        }

        se (acertos >= 5)
        {
            escreva("\n\nParabéns!")
            escreva("\nVoce saiu do Labirinto Magico!")
        }
        senao
        {
            escreva("\n\nFim de jogo")
            escreva("\nVoce se perdeu no meio do labirinto.")
        }

    }

}