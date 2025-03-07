func guerra_fria () {
    printSlow("O visor do mecanismo se ilumina, e o seguinte texto aparece na tela: “O ano é 1985. O mundo prossegue em meio a uma Guerra Fria que já durava quase quarenta anos. Milhares de bunkers foram construídos ao redor do mundo, consequência do medo generalizado de uma escalada nuclear do conflito.”\n")
    printSlow("Você sente que o mecanismo te conferiu certos conhecimentos. Em particular, agora você sabe como funcionam sistemas de rastreamento de mísseis. Como isso aconteceu resta um mistério. De qualquer forma, você olha para o mecanismo e percebe que pode também escolher o país para o qual irá. Por seus conhecimentos históricos e pelo país de que vem, você pensa que só três escolhas fazem sentido. Que país você escolhe? (Brasil = B; União Soviética = U; Estados Unidos = E)\n")

    let pais = readLine()

    if pais == "B" || pais == "b" {
        printSlow("Você seleciona o Brasil e se prepara. Inicialmente, parece que nada aconteceu. Depois de segundos que duraram uma eternidade, um calor começa a emanar do seu peito e o mundo fica cada vez mais claro, até que se ouve uma explosão e você cai no chão. Pelo aroma de mofo e pelos tons amareladas, você sabe que chegou ao passado.\n")
    } else if pais == "U" || pais == "u" {
        printSlow("Você seleciona a União Soviética e se prepara. Inicialmente, parece que nada aconteceu. Depois de segundos que duraram uma eternidade, um calor começa a emanar do seu peito e o mundo fica cada vez mais claro, até que se ouve uma explosão e você cai no chão. Pelo aroma de mofo e pelos tons amareladas, você sabe que chegou ao passado.\n")
    } else if pais == "E" || pais == "e" {
        printSlow("Você seleciona os Estados Unidos e se prepara. Inicialmente, parece que nada aconteceu. Depois de segundos que duraram uma eternidade, um calor começa a emanar do seu peito e o mundo fica cada vez mais claro, até que se ouve uma explosão e você cai no chão. Pelo aroma de mofo e pelos tons amareladas, você sabe que chegou ao passado.\n")
    } else {
        printSlow("Você escolheu desonestamente.")
        game_over()
        return
    }

    if pais == "B" || pais == "b" {
        printSlow("Você se encontra em uma sala de conferências com diversas figuras fardadas e algumas usando terno, claramente uma reunião de cúpula. Você olha para baixo e vê que é um homem de terno, possivelmente um diplomata de alta patente. Você escuta a conversa por alguns minutos, e percebe se tratar de uma discussão sobre a possibilidade de desenvolvimento de tecnologia nuclear no Brasil. Um general, em particular, fala com veemência em favor dessa possibilidade. Você sente que é o momento de agir. Você: (Atuar fisicamente = 1; Atuar verbalmente = 2)")
        let decisaoB1 = readLine()
        if decisaoB1 == "1" {
            let roller = Int.random(in: 1..<21)
            print("Digite qualquer coisa para rolar o D20")
            _ = readLine()
            D20(num: roller)
            if roller >= 17 {
                printSlow("Você se aproxima rapidamente do general, que continua com seu argumento mirabolante quanto à importância de o Brasil possuir bombas atômicas, sem perceber o que está para acontecer. Você então segura as pernas do general, o levanta, e o defenestra pela janela convenientemente aberta atrás dele. Os demais ficam em choque e, apesar de discordarem da forma com que você agiu, concordam que aquele general estava errado. O consenso se torna contrário à tecnologia nuclear.")
                vencer()
                return
            } else {
                printSlow("Você se aproxima rapidamente do general, que continua com seu argumento mirabolante quanto à importância de o Brasil possuir bombas atômicas, sem perceber o que está para acontecer. Você então segura as pernas do general, o levanta, e o defenestra pela janela convenientemente aberta atrás dele. Os demais presentes pulam em cima de você, que é preso. Da prisão, você fica sabendo que sua ação não adiantou de nada: o programa nuclear brasileiro foi posto em prática, e o país acabou por participar da chuva nuclear que destruiu sua realidade original.")
                game_over()
                return
            }
        } else if decisaoB1 == "2" {
            printSlow("Você levanta a voz para interromper o general, que, perplexo, fica boquiaberto enquanto você profere o discurso mais apaixonado que consegue. Você recebe uma advertência por ter interrompido o general, e se mantém em silêncio pelo restante da reunião, mas algo da sua fala convenceu boa parte dos presentes de que talvez esse não seja o melhor plano para o futuro do país e do mundo. Agora, precisa decidir os próximos passos da luta: (Diplomacia = 1; Atuar por meio de ONGs = 2)")
            let decisaoB2 = readLine()
            if decisaoB2 == "1" {
                let roller = Int.random(in: 1..<21)
                print("Digite qualquer coisa para rolar o D20")
                _ = readLine()
                D20(num: roller)
                if roller >= 7 {
                    printSlow("Você opta por seguir a carreira diplomática. É incrível como é fácil enganar os demais: afinal, você nunca sequer estudou esses temas, e consegue se passar por um diplomata formado. Com o passar do tempo, você consegue galgar posições em órgãos multipartais, e eventualmente vira o primeiro presidente brasileiro da ONU. Nessa posição, já em 2025, atua diretamente para o fim dos estoques de ogivas nucleares no mundo, o que impede o apocalipse nuclear de ocorrer.")
                    vencer()
                    return
                } else {
                    printSlow("Você opta por seguir a carreira diplomática. Inicialmente você acha incrível como é fácil enganar os demais: afinal, você nunca sequer estudou esses temas, e consegue se passar por um diplomata formado. No entanto, em poucos anos fica claro que você estagnou na carreira, e nunca chega a uma posição em que consiga de fato fazer a diferença. O inverno nuclear é inevitável.")
                    game_over()
                    return
                }
            } else if decisaoB2 == "2" {
                let roller = Int.random(in: 1..<21)
                print("Digite qualquer coisa para rolar o D20")
                _ = readLine()
                D20(num: roller)
                if roller >= 17 {
                    printSlow("Você opta pelo caminho não governamental. Governos nunca foram sua praia, e você sempre achou que causavam mais problemas do que resolviam: afinal, foram eles quem fizeram as bombas. Você se filia a uma ONG que luta contra a proliferação nuclear, e se mantém ativo na luta por décadas, se tornando uma figura mundialmente conhecida e chegando mesmo a falar na ONU como convidado externo. Depois de ganhar o Nobel da Paz, governantes passam a te ouvir, e você consegue influenciar o mundo a abandonar armas nucleares.")
                    vencer()
                    return
                } else {
                    printSlow("Você opta pelo caminho não governamental. Governos nunca foram sua praia, e você sempre achou que causavam mais problemas do que resolviam: afinal, foram eles quem fizeram as bombas. Você se filia a uma ONG que luta contra a proliferação nuclear, e se mantém ativo na luta por décadas, chegando mesmo a falar na ONU como convidado externo. No entanto, sua atuação não te leva longe: o mundo se recusa a ouvir alguém que não tem um cargo de poder, e as milhares de ogivas existentes continuam ativas. O apocalipse nuclear de 2025 é inevitável.")
                    game_over()
                    return
                }
            } else {
                printSlow("Você escolheu desonestamente.")
                game_over()
                return
            }
        } else {
            printSlow("Você escolheu desonestamente.")
            game_over()
            return
        }

    } else if pais == "U" || pais == "u" {
        printSlow("Вы как будто оказались на другой планете. Все серое и пахнет дымом, как будто это американский фильм. Вы натыкаетесь на сейф, в котором хранятся все планы советских ядерных боеголовок. Хотите поджечь сейф? (Да = 1; Нет = 2)")
        let decisaoU1 = readLine()
        if decisaoU1 == "1" {
            printSlow("Вы подожгли все планы, и теперь Советы больше не смогут доставлять ядерные боеголовки. Ядерная война обратилась вспять!")
            vencer()
            return
        } else if decisaoU1 == "2" {
            printSlow("Вы буквально могли закончить войну одним шагом, даже не пройдя проверку на удачу. Это была единственная возможность такого рода в истории. Поздравляю, вы сделали худший выбор из возможных.")
            game_over()
            return
        } else {
            printSlow("Você escolheu desonestamente.")
            game_over()
            return
        }

    } else if pais == "E" || pais == "e" {
        printSlow("Você se encontra em uma sala de conferências cercado de generais e pessoas de terno, todas aflitas. A discussão é acalorada, e você logo nota o porquê: uma grande luz vermelha pisca em um visor do mapa mundi, indicando um ataque nuclear vindo da União Soviética. Você, no entanto, veio do futuro, e sabe que já havia acontecido antes de os sistemas de detecção terem ativado em vão. O que você faz? (Convencer = 1; Contra-atacar = 2)")
        let decisaoE1 = readLine()
        if decisaoE1 == "1" {
            printSlow("Você começa a falar. Inicialmente, sua voz tremula de nervosismo: afinal, diversos generais e até mesmo o presidente estavam presentes. Apresentar algo em inglês é difícil! Você respira fundo, no entanto, e a importância daquele momento te conquista. Você profere o discurso mais eloquente que consegue, em seu inglês macarrônico que, surpreendentemente, ninguém parece perceber. Em poucos minutos a situação desescala, e o sinal luminoso desaparece: realmente era um alarme falso. No entanto, a questão não está resolvida: a ameaça nuclear continua presente. Você: (Criar um partido = 1; Se filiar a um partido = 2)")
            let decisaoE2 = readLine()
            if decisaoE2 == "1" {
                let roller = Int.random(in: 1..<21)
                print("Digite qualquer coisa para rolar o D20")
                _ = readLine()
                D20(num: roller)
                if roller >= 5 {
                    printSlow("Você cria um partido independente, que pela primeira vez em quase 200 anos ameaça a hegemonia dos dois partidos dominantes. Com o passar das décadas seu partido consegue chegar ao poder, e em 2025 você está em posição de finalmente deter a ameaça nuclear, depois de décadas de desarmamento. Você finaliza o processo, com um tratado com as demais potências nucleares, e a ameaça nuclear é revertida. Ao menos por agora…")
                    vencer()
                    return
                } else {
                    printSlow("Você passa a atuar politicamente, mas em poucos anos percebe que a estrutura engessada dos organismos multilaterais não vai te permitir fazer muitas mudanças. Você até tenta mudar algo, e obtém alguns sucessos, mas não consegue vencer a guerra. A ameaça nuclear se concretiza, e em 2025 tudo vai pelos ares.")
                    game_over()
                    return
                }
            } else if decisaoE2 == "2" {
                let roller = Int.random(in: 1..<21)
                print("Digite qualquer coisa para rolar o D20")
                _ = readLine()
                D20(num: roller)
                if roller >= 17 {
                    printSlow("Você faz carreira em um dos partidos hegemônicos e eventualmente consegue chegar à presidência do país, momento em que teve poder o suficiente nas mãos para reduzir a ameaça nuclear. Os Estados Unidos assinam um acordo com as demais potencias nucleares para destruir todas as ogivas restantes, e a ameaça nuclear é revertida. Ao menos por agora…")
                    vencer()
                    return
                } else {
                    printSlow("Você passa a atuar politicamente, mas dentro de um dos partidos hegemônicos já existentes. Você em poucos anos percebe que a estrutura engessada desses partidos não vai te permitir fazer muitas mudanças, mas agora já é tarde: sua imagem já está associada ao partido. Você até tenta mudar algo, e obtém alguns sucessos, mas não consegue vencer a guerra. A ameaça nuclear se concretiza, e em 2025 tudo vai pelos ares.")
                    game_over()
                    return
                }
                
            } else {
                printSlow("Você escolheu desonestamente.")
                game_over()
                return
            }
        } else if decisaoE1 == "2" {
            let roller = Int.random(in: 1..<21)
            print("Digite qualquer coisa para rolar o D20")
            _ = readLine()
            D20(num: roller)
            if roller >= 19 {
                printSlow("Você tomou uma decisão arriscada, mas no fim os Soviéticos não estavam tão preparados e não tiveram tempo de contra-atacar! Parabéns! Você gerou um inverno nuclear menor do que se tivesse havido uma guerra total.")
                vencer()
                return
            } else {
                printSlow("Você junta sua voz à dos que argumentavam pela aniquilação da União Soviética. Gritar em inglês nunca foi tão divertido! Em poucos segundos, surge um coro de “ABAIXO OS SOVIÉTICOS!”, e os botões vermelhos são apertados. No entanto, a surpresa: dois minutos depois de apertados, quando os mísseis nucleares já estavam a caminho, a luz vermelha se apaga: era um alarme falso. Mas agora é tarde, e milhares de ogivas voavam em direção a Moscou e ao resto da Rússia. Eles certamente retaliarão. Parabéns, você fez parte da destruição da humanidade.")
                game_over()
                return
            }
        } else {
            printSlow("Você escolheu desonestamente.")
            game_over()
            return
        }
    } else {
        printSlow("País inválido. Você escolheu desonestamente.")
        game_over()
        return
    }
}
