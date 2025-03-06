func start() {
    printSlow("O mundo está envolto em fumaça. Depois da queda de milhares de bombas atômicas, se seguiu um inverno nuclear que destruiu boa parte da Terra como a conhecemos hoje. Estados colapsaram, cidades inteiras foram arrasadas, florestas desapareceram. Mas como viemos parar aqui? E, mais importante, será que você pode fazer algo a respeito?\n\nPor coincidência, ao procurar por recursos nos escombros de uma casa de campo, você encontrou um estranho mecanismo, com um visor, um teclado numérico, e um mapa mundi, a partir do qual é possível escolher datas e países. Suspeitando se tratar de uma máquina do tempo, você decide inserir um ano em que seria possível evitar o caos e destruição que você vivencia. Você sabe que os três anos mais plausíveis são na década de 1940, 1985 e 1999. Que ano você escolheria?")

    if let user = readLine(){
        if let ano = Int(user){
            if ano > 1939 && ano < 1950{
                forthys()
            } else if ano == 1985 {
                guerra_fria()
            } else if ano == 1999 {
                milenio()
            } else if ano < 1900 {
                printSlow("Você voltou demais no tempo. Você tropeça e cai, se ralando por inteiro. A ausência de penicilina fez com que morresse uma morte lenta e dolorosa, sem poder modificar sua realidade original.")
                start()
            } else if ano > 2025 {
                printSlow("Qual o sentido de visitar um mundo destruído?")
                start()
            }
        } else {
            print("Função desabilitada, aguarde novas versões do sistema operacional.")
            start()
        }
    }
}
