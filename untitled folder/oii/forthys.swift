func forthys () {
    printSlow("Década de 40")
    printSlow("Escolha uma das opcoes (1, 2 ou 3) a seguir:")
    print("1. 1945", "2. 1944", "3. 1940", separator: "\n")

    var option = readLine()
    let lucky = Int.random(in: 1..<21)

    while option != "1" && option != "2" && option != "3" {
        printSlow("ESCOLHA UMA OPÇÃO VÁLIDA")
        option = readLine()
    }

    if option == "1"{
        //EUA
        print("Digite qualquer coisa para rolar o D20")
        _ = readLine()
        D20(num: lucky)
        if lucky <= 15 {
            printSlow("Seja bem vindo viajante! Você está no dia 16 de julho de 1945 e são, precisamente 5h29! Onde voce está? Los Alamos, Novo Mexico, EUA. O que voce esta fazendo aqui?")
            print("TICK-TACK: 5h30")
            printSlow("       ...")
            printSlow("Parabéns, você é a primeira pessoa a ter o privilégio de sentir como é ser atingido por uma bomba atômica.")
            printSlow("Infelizmente você não poderá continuar por aqui.")
            game_over()
            return
        } else if lucky < 20 {
            printSlow("Seja bem vindo viajante! Você está em território Norte Americano!")
            printSlow("Infelizmente estamos no Alaska...")
            printSlow("Que tal uma experiência como a do Titanic?")
            game_over()
            return
        } else {
            print("ACERTO CRÍTICO!!!")
            printSlow("Meus parabéns! Você agora é o mais novo aluno de Albert Einstein! E você o convence a assumir um papel mais ativo em promover a criação de intituições internacionais que prevenissem a proliferacao de armas nucleares. Assim você impede que haja a corrida armamentista nuclear.")
            vencer()
            return
        }
    
    } else if option == "2" {
        //Polônia
        printSlow("Seja bem vindo viajante! O ano atual é 1944. Não podemos te dizer exatamente em qual dia.")
        printSlow("Não reconhece onde está? Pois vamos lá: Não se preocupe, você está na Polônia! Mais especificamente em Oświęcim (como se pronuncia isso?).")
        printSlow("OK, talvez você devesse se preocupar um pouquinho…")
        printSlow("     ...")
        printSlow("EU NÃO FICARIA POR AQUI!")
        printSlow("         ...")
        printSlow("tentar fugir? Responda com [S/N]")
        let fuga = readLine()
        if fuga == "S" || fuga == "s" {
            print("Digite qualquer coisa para rolar o D20")
            _ = readLine()
            D20(num: lucky)
            if lucky < 15 {
                print("Você escapou!", "Mas acabou morto a alguns metros do portão por tiros de guardas.", "Infelizmente você não conseguiu salvar seu mundo.", separator: "\n")
                game_over()
                return
            } else if lucky < 20 {
                printSlow("Você não conseguiu fugir...")
                printSlow("                 ...")
                printSlow("             ...")
                printSlow("         ...")
                printSlow("     ...")
                printSlow(" ...")
                printSlow("Parabéns! Chegou a sua vez de experienciar a sensação de estar em um campo de concentração. Afinal, o que é a vida além de uma sequência de novas experiências?!")
                printSlow("                 ...")
                printSlow("RESPIRE FUNDO!")
                printSlow("         ...")
                printSlow("     ...")
                printSlow(" ...")
                printSlow("Infelizmente você não sobreviveu e não poderá continuar por aqui. Não foi dessa vez que o mundo foi salvo.")
                game_over()
                return
            } else {
                print("ACERTO CRÍTICO!!!")
                printSlow("Você é definitivamente um herói! Você ganhou acesso ao trilhos do trem de deportação! E com todo seu conhecimento, você consegue fazer com que eles explodam, assim atrasando a maquina de morte nazista.")
                printSlow("Infelizmente, um acerto crítico não significa que tudo ficará bem...")
                printSlow("\n")
                printSlow("Você salvou algumas pessoas mas infelizmente seu mundo ainda acabará")
                game_over()
                return
            }
        } else if fuga == "N" || fuga == "n" {
            printSlow("Parabéns! Chegou a sua vez de experienciar a sensação de estar em um campo de concentração. Afinal, o que é a vida além de uma sequência de novas experiências?!")
            printSlow("                 ...")
            printSlow("RESPIRE FUNDO!")
            printSlow("         ...")
            printSlow("     ...")
            printSlow(" ...")
            printSlow("Infelizmente você não sobreviveu e não poderá continuar por aqui. Não foi dessa vez que o mundo foi salvo.")
            game_over()
            return
        } else {
            printSlow("Você escolheu desonestamente.")
            game_over()
            return
        }
        
    }  else if option == "3" {
        //EUA
        printSlow("ERRO ERRO ERRO")
        printSlow("                 ...")
        printSlow("                 ...")
        printSlow("                 ...")
        print("Olá Viajante! Você está em 1939. Mais especificamente no dia 20 de Julho. O que pode acontecer aqui?", "Em qual cidade você está? Isso não importa realmente.", "- Você tem UMA nova missão", separator: "\n")
        printSlow("- Aceitar? [S/N]")
        let mission = readLine()
        if mission == "N" || mission == "n"{
            print("Você não está disposto a salvar o seu mundo? OK. Vá em bora!", "     ...", "Infelizmente você não foi considerado merecedor de continuar nesta linha do tempo. Retorne ao fim do mundo.", separator: "\n")
            game_over()
            return
        } else if mission == "S" || mission == "s" {
            printSlow("MISSÃO: entregar uma marmita envenenada. \n OBJETIVO: Impedir que o Projeto Manhattan seja criado! (entregando a marmita para Leo Szilard)")
            print("Digite qualquer coisa para rolar o D20")
            _ = readLine()
            D20(num: lucky)
            if lucky < 16 {
                printSlow("Você nao concluiu sua missão pois ficou com fome e acabou comendo a marmita envenenada...")
                game_over()
                return
            } else if lucky < 20 {
                printSlow("Você realiza a missão com sucesso! E desse modo Leo Szilard é incapacitado de levantar suas preocupações em relação aos avanços em nível nuclear, de certo modo, fazendo com que o Projeto Manhattan nunca chegue a ser idealizado.")
                printSlow("MEUS PARABÉNS! VOCÊ ACABOU DE IMPEDIR A INVENÇÃO DAS BOMBAS ATÔMICAS! E agora já pode voltar ao seu mundo. Ele estará diferente, portanto se prepare e BOA VIAGEM!")
                vencer()
                return
            } else {
                print("ACERTO CRÍTICO!!!")
                printSlow("Você QUASE conclui a missão, mas antes que Szilard coma, ele acaba percebendo suas intenções. Após alguns anos tentando investigar o atentado à sua vida, em 1945 ele começa a questionar fortemente o uso da bomba atômica. Leo acaba por perceber e fazer grandes esforços para impedir o uso contra o Japão.")
                print("Você acabou de salvar seu mundo! PARABÉNS!")
                printSlow("Volte e aproveite!!!")
                vencer()
                return
            }
        } else {
            printSlow("Você escolheu desonestamente.")
            game_over()
            return
        }
    }
}
