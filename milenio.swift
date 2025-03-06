func milenio(){
    printSlow("Você se encontra deitado numa superfície bem desconfortável, cheio de névoa e barulho ao seu redor. De repente, luzes fortes te cegam e o que parece um carro antigo e fumacento desvia buzinando repetidamente. Com medo, você se levanta e corre pro que parece ser uma calçada. Uma pilha de jornais cobre uma pessoa, tentando se proteger do frio. Você olha mais perto e vê uma data, 31 de dezembro de 1999. Os jornais se mechem e de dentro sai uma mulher, que lhe pergunta:\n\nMulher: Com licença jovem, teria algo de comer? Não como há uns dois dias.")
    var iPhone = 0
    func escolha1(){
        print("Digite a ou b para escolher uma opção: ", "a) Ajudar a senhora","b) Ignorar a senhora", separator: "\n")
        let escolha = readLine()
        if escolha == "a" || escolha == "A" {
            printSlow("Você tira da mochila um pote com biscoitos assados pela sua querida vó, que com muito carinho assou para que você não passasse fome. A mulher logo devora rapidamente os biscoitos, e emocionada com uma refeição tão gostosa, resolve lhe dar o seu maior tesouro.\n\nMulher: No último ano-novo, encontrei este estranho aparelho em uma lixeira. Use-o com sabedoria jovem. E obrigado pelos biscoitos! Estavam deliciosos!\n\nVocê olha o aparelho com atenção e se espanta, é um iPhone! Antigo, mas um iPhone! Mas como poderia existir um iPhone em 1999? Em choque, você olha de volta para o mulher, contudo, esta já havia voltado para debaixo dos jornais.\n\nEm seguida, você caminha pelas ruas barulhentas e caóticas, enquanto divaga o que fazer. Restam poucas horas para a virada do milênio, o tempo está se esgotando. Completamente sem rumo, você decide ir para um bar, beber. Avistando o mais próximo, você observa uma multidão no que parece ser um estabelecimento frequentado por senhores de idade.\n\n“Vou perder toda a minha pesquisa por causa do bug do milênio, tantos anos gastos para nada” - você escuta um senhor calvo lamentando, enquanto põe para dentro um gole do que parece ser uma bebida forte com um cheiro doce. Você decide se aproximar e escutá-lo.\n\nSenhor: Olá meu jovem, o que lhe traz aqui? Qual sua lamentação?")
            iPhone = 1
            return
        } else if escolha == "b" || escolha == "B"{
            printSlow("Você até possui comida guardada para a sua aventura, contudo, com medo de ficar sem, resolve passar reto pela senhora.\n\nEm seguida, você caminha pelas ruas barulhentas e caóticas, enquanto divaga o que fazer. Restam poucas horas para a virada do milênio, o tempo está se esgotando. Completamente sem rumo, você decide ir para um bar, beber. Avistando o mais próximo, você observa uma multidão no que parece ser um estabelecimento frequentado por senhores de idade.\n\n“Vou perder toda a minha pesquisa por causa do bug do milênio, tantos anos gastos para nada” - você escuta um senhor calvo lamentando, enquanto põe para dentro um gole do que parece ser uma bebida forte com um cheiro doce. Você decide se aproximar e escutá-lo.\n\nSenhor: Olá meu jovem, o que lhe traz aqui? Qual sua lamentação?")
            return
        } else {
            print("Você escolheu desonestamente.")
            escolha1()
        }
    }
    escolha1()
    func escolha2() {
        print("Digite a ou b para escolher uma opção:", "a) “Eu vim salvar o mundo meu senhor.”","b) “Não tenho esperança de mais nada.”", separator: "\n")
        let escolha = readLine()
        printSlow("Senhor: Pois bem, beba comigo! Barman! Mais um copo de Chevette!\n\nConversando com o velho, você descobre que a multidão no bar é da empresa dele, e todos estão revoltados pois, diferente de muitas outras, esta não investiu em se preocupar com a bug do milênio e assim, os trabalhadores acreditavam que com a virada do ano viria a perda dos seus empregos.“Vamos para o bunker no sul da cidade” diz um trabalhador. “Com o risco de desabamento?” outro indaga. “É o único que ainda tem espaço, se não tem como salvarmos nossos empregos vamos salvar nossas vidas!”responde. “Para sermos novamente explorados por uma outra empresa quando isso acabar? Não, agradeço.” Com curiosidade, você pergunta ao senhor do que aqueles homens falavam.\n\nSenhor: Uma baboseira! Dizem que o mundo vai acabar por causa do bug do milênio, que as máquinas vão se voltar contra nós! Coisa boba! As datas que vão dar problema e toda minha pesquisa vai se misturar e ficar completamente inútil! Deixei de lado toda a minha vida para viver para o trabalho, para ganhar uma miséria e ser infeliz, nada mais me importa.\n\nSentindo uma grande revolta com a situação, você decide ajudar com suas grandes habilidades de programação e de comunicação. “Vamos até a empresa meu amigo! Vou ajudá-los a salvar seus empregos! Sobre suas vidas, não se preocupem, nenhuma máquina vai atacá-los.”")
        if escolha == "a" || escolha == "A"{
            printSlow("Sua empolgação incentivou os trabalhadores a terem esperança e isso aqueceu seu coração. Eles decidem te levar até a sua empresa, e o ajudam a entrar de fininho na sala do CEO.")
        } else if escolha == "b" || escolha == "B"{
            if iPhone == 0 {
                printSlow("Você diz com um tom de incerteza que faz com que os trabalhadores fiquem relutantes de que ajudar, e estes, bêbados, sem esperança, decidem a continuar beber no bar. Sem ter o que fazer, resolve se juntar e eles e aguardar a destruição do mundo.")
                game_over()
                return
            } else {
                printSlow("Você procura a fundo na sua mochila e encontra um dado de 20 lados e decide rolar o D20. Se cair de até 10, você ganha influência sobre os trabalhadores, se não, você não é capaz de transmitir esperança.")
                print("Digite qualquer coisa para rolar o D20")
                _ = readLine()
                let D = Int.random(in: 1..<21)
                D20(num: D)
                if D <= 10 {
                    printSlow("Você diz com um tom de incerteza que faz com que os trabalhadores fiquem relutantes de que ajudar, e estes, bêbados, sem esperança, decidem a continuar beber no bar. Sem ter o que fazer, resolve se juntar e eles e aguardar a destruição do mundo.")
                    game_over()
                    return
                } else if  D == 20 {
                    //acerto critico
                    printSlow("ACERTO CRÍTICO!!!\n\nVocê fala com tanta convicção que inspira os trabalhadores a lutar por si mesmos. O bar fica completamente silencioso, e os olhares de todos ganham um novo brilho, com esperança e determinação. “Tem razão! Se ficarmos parados, será a nossa ruína! Vamos consertar essa bagunça!” - exclama um trabalhador. A multidão do bar explode em gritos de apoios, e o grupo de bêbados derrotados se transforma por completo, preparados para luta. Eles decidem te levar até a sua empresa, e o ajudam a entrar de fininho na sala do CEO.")
                } else {
                    printSlow("Sua empolgação incentivou os trabalhadores a terem esperança e isso aqueceu seu coração. Eles decidem te levar até a sua empresa, e o ajudam a entrar de fininho na sala do CEO.")
                }
                
            }
        } else {
            print("Você escolheu desonestamente.")
            escolha2()
        }
    }
    escolha2()

    print("O CEO por acaso, estava em uma reunião com os homens mais poderosos do planeta. Você se garante?")
    if iPhone == 1 {
        print("Digite qualquer coisa para rolar o D20")
        _ = readLine()
        let Da = Int.random(in: 1..<21);
        D20(num: Da)
        if Da<=10 {
            print("Você não tem lábia. Ainda bem que você tem um iPhone. Mas sem bateria.")
            printSlow("Não há nada que você pode fazer. O mundo está perdido.")
            game_over()
            return
        } else if Da == 1 {
            //erro critico
            printSlow("Você, tremendo de nervoso, acaba ficando com medo demais e faz xixi nas calças. Depois de tamanha humilhação, todos riem de você. Numa última tentativa, você tira o iPhone da mochila. Os ricos olham com curiosidade e roubam o aparato de você te jogam na rua.\n\nNão há nada que você pode fazer. O mundo está perdido. E não pode voltar pra casa")
            game_over()
            return
        } else if Da == 20 {
            //acerto critico
            printSlow("ACERTO CRÍTICO!!!\n\nVocê abre a sua mochila, e vê que o Iphone se transformou em um MacBook Pro M4!\n\nO CEO arregala seus olhos, outro grita, e outro desmaia instantaneamente ao ver a finura do dispositivo. Enquanto você abre o laptop, os homens se espantam: “Cade os fios? Disquetes? Gabinete? Cooler? Isso é feitiçaria!”. Pacientemente, você mostra todas as principais features do aparelho: as tarefas são aprimadas com inteligência artificial, telas de altíssima qualidade, armazenamento de 1 TB , memória de 24 GB, GPU de 20 núcleos e CPU de 14 núcleos, sistema de resfriamento silencioso avançado e silencioso, pode conectar qualquer coisa sem fios e tem uma bateria de 24 horas! O caos é instaurado.\n\nSe acalmem senhores, vim avisá-los do perigo eminente, hoje, na virada do milênio, não somente o bug do milênio afetará as máquinas mas também cairá uma chuva de meteoros que a Nasa foi incapaz de detectar, por favor, se protejam, queridas mentes poderosas (você se esforça para esconder a ironia)”.Assustados com a tecnologia em sua frente e as novas informações, os homens se desesperam e rapidamente começam a falar descontroladamente. “Se acalmem todos! Conheço um bunker ao sul da cidade, não é dos melhores mas é o que conseguimos para as últimas horas, voltei para salvá-los.” Seguindo as direções dadas pelos trabalhadores do bar, você leva os homens poderosos para o bunker em risco de desabamento. Todos entram no bunker, menos você, que dá a desculpa que irá encontrar seus parentes para salvá-los. “Meu dever com vocês está cumprido, salvar os homens mais importantes do mundo (diz quase se contorcendo de desgosto de bajular ricos). Vejo-os em algumas horas.” Você fecha o bunker, e devido a sua frágil estabilidade, o terreno em cima deste desaba e destrói o Bunker. Você sorri, com uma sensação    de alívio e volta para a empresa que faltava corrigir o bug do milênio, e com seus conhecimentos do século XXI rapidamente o conserta e avisa os trabalhadores. Com uma sensação de dever cumprido, o mundo ao seu redor começa a girar e você cai, para acordar no chão da casa de campo onde encontrou o visor. Você sai da casa e sente um ar estranhamente respirável, limpo, com lindas e grandes árvores ao redor. ")
            vencer()
            return
        } else{
            printSlow("Sem nada a perder, tira o iPhone do bolso e todos te olham com espanto. Um dos homens até cai para trás da cadeira com medo. Homem poderoso: “Onde estão os botões dessa geringonça ?” “Eu vim do futuro. No futuro os celulares não tem botões.”\n\nSe acalmem senhores, vim avisá-los do perigo eminente, hoje, na virada do milênio, não somente o bug do milênio afetará as máquinas mas também cairá uma chuva de meteoros que a Nasa foi incapaz de detectar, por favor, se protejam, queridas mentes poderosas (você se esforça para esconder a ironia)”.Assustados com a tecnologia em sua frente e as novas informações, os homens se desesperam e rapidamente começam a falar descontroladamente. “Se acalmem todos! Conheço um bunker ao sul da cidade, não é dos melhores mas é o que conseguimos para as últimas horas, voltei para salvá-los.” Seguindo as direções dadas pelos trabalhadores do bar, você leva os homens poderosos para o bunker em risco de desabamento. Todos entram no bunker, menos você, que dá a desculpa que irá encontrar seus parentes para salvá-los. “Meu dever com vocês está cumprido, salvar os homens mais importantes do mundo (diz quase se contorcendo de desgosto de bajular ricos). Vejo-os em algumas horas.” Você fecha o bunker, e devido a sua frágil estabilidade, o terreno em cima deste desaba e destrói o Bunker. Você sorri, com uma sensação    de alívio e volta para a empresa que faltava corrigir o bug do milênio, e com seus conhecimentos do século XXI rapidamente o conserta e avisa os trabalhadores. Com uma sensação de dever cumprido, o mundo ao seu redor começa a girar e você cai, para acordar no chão da casa de campo onde encontrou o visor. Você sai da casa e sente um ar estranhamente respirável, limpo, com lindas e grandes árvores ao redor. ")
            vencer()
            return
        }
    } else {
        printSlow("Você abre a carteira. Não tinha nenhum centavo. Estava diante de homens que se importavam somente com dinheiro e estava completamente sem.Você procura a fundo na sua mochila e encontra um dado de 20 lados e decide rolar o D20. Se cair de até 10, você ganha um artefato especial do futuro, se não, você continua sem nada.")
        print("Digite qualquer coisa para rolar o D20")
        _ = readLine()
        let d = Int.random(in: 1..<21);
        D20(num: d)
        if d <= 10{
            printSlow("Não há nada que você pode fazer. O mundo está perdido.")
            game_over()
            return
        } else if d == 20 {
            //acerto critico
            printSlow("ACERTO CRÍTICO!!!\n\nVocê abre a sua mochila e de lá tira um MacBook Pro M4!/n/nO CEO arregala seus olhos, outro grita, e outro desmaia instantaneamente ao ver a finura do dispositivo. Enquanto você abre o laptop, os homens se espantam: “Cade os fios? Disquetes? Gabinete? Cooler? Isso é feitiçaria!”. Pacientemente, você mostra todas as principais features do aparelho: as tarefas são aprimadas com inteligência artificial, telas de altíssima qualidade, armazenamento de 1 TB , memória de 24 GB, GPU de 20 núcleos e CPU de 14 núcleos, sistema de resfriamento silencioso avançado e silencioso, pode conectar qualquer coisa sem fios e tem uma bateria de 24 horas! O caos é instaurado.\n\nSe acalmem senhores, vim avisá-los do perigo eminente, hoje, na virada do milênio, não somente o bug do milênio afetará as máquinas mas também cairá uma chuva de meteoros que a Nasa foi incapaz de detectar, por favor, se protejam, queridas mentes poderosas (você se esforça para esconder a ironia)”.Assustados com a tecnologia em sua frente e as novas informações, os homens se desesperam e rapidamente começam a falar descontroladamente. “Se acalmem todos! Conheço um bunker ao sul da cidade, não é dos melhores mas é o que conseguimos para as últimas horas, voltei para salvá-los.” Seguindo as direções dadas pelos trabalhadores do bar, você leva os homens poderosos para o bunker em risco de desabamento. Todos entram no bunker, menos você, que dá a desculpa que irá encontrar seus parentes para salvá-los. “Meu dever com vocês está cumprido, salvar os homens mais importantes do mundo (diz quase se contorcendo de desgosto de bajular ricos). Vejo-os em algumas horas.” Você fecha o bunker, e devido a sua frágil estabilidade, o terreno em cima deste desaba e destrói o Bunker. Você sorri, com uma sensação    de alívio e volta para a empresa que faltava corrigir o bug do milênio, e com seus conhecimentos do século XXI rapidamente o conserta e avisa os trabalhadores. Com uma sensação de dever cumprido, o mundo ao seu redor começa a girar e você cai, para acordar no chão da casa de campo onde encontrou o visor. Você sai da casa e sente um ar estranhamente respirável, limpo, com lindas e grandes árvores ao redor. ")
            vencer()
            return
        } else if d == 1 {
            //erro critico
            printSlow("Você, tremendo de nervoso, acaba ficando com medo demais e faz xixi nas calças. Depois de tamanha humilhação, todos riem de você. A mulher que estava na rua mais cedo entra na sala e aponta pra você e diz:”Esta é a pessoa que me ignorou na rua, mantem-nha.” Pelo visto ela se disfarçava de moradora de rua para testar a bondade das pessoas e puní-las caso julgasse necessário. E você não passou no teste e nem tem como voltar para casa.\n\nNão há nada que você pode fazer. O mundo está perdido.")
            game_over()
        } else {
            printSlow("Parabéns, você ganha um iPhone (antigo, mas um iPhone!), em 1999!\n\nSem nada a perder, tira o iPhone do bolso e todos te olham com espanto. Um dos homens até cai para trás da cadeira com medo. Homem poderoso: “Onde estão os botões dessa geringonça ?” “Eu vim do futuro. No futuro os celulares não tem botões.”\n\nSe acalmem senhores, vim avisá-los do perigo eminente, hoje, na virada do milênio, não somente o bug do milênio afetará as máquinas mas também cairá uma chuva de meteoros que a Nasa foi incapaz de detectar, por favor, se protejam, queridas mentes poderosas (você se esforça para esconder a ironia)”.Assustados com a tecnologia em sua frente e as novas informações, os homens se desesperam e rapidamente começam a falar descontroladamente. “Se acalmem todos! Conheço um bunker ao sul da cidade, não é dos melhores mas é o que conseguimos para as últimas horas, voltei para salvá-los.” Seguindo as direções dadas pelos trabalhadores do bar, você leva os homens poderosos para o bunker em risco de desabamento. Todos entram no bunker, menos você, que dá a desculpa que irá encontrar seus parentes para salvá-los. “Meu dever com vocês está cumprido, salvar os homens mais importantes do mundo (diz quase se contorcendo de desgosto de bajular ricos). Vejo-os em algumas horas.” Você fecha o bunker, e devido a sua frágil estabilidade, o terreno em cima deste desaba e destrói o Bunker. Você sorri, com uma sensação    de alívio e volta para a empresa que faltava corrigir o bug do milênio, e com seus conhecimentos do século XXI rapidamente o conserta e avisa os trabalhadores. Com uma sensação de dever cumprido, o mundo ao seu redor começa a girar e você cai, para acordar no chão da casa de campo onde encontrou o visor. Você sai da casa e sente um ar estranhamente respirável, limpo, com lindas e grandes árvores ao redor. ")
            vencer()
            return
        }
    }
}
