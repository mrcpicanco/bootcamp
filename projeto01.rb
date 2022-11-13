#hash de mensagens para o usuário
puts "Seja bem-vindo(a). Faça boas compras."
    mensagens = { "menu_principal" => ["Selecione a opção desejada: ", "\n[1] Comprar","\n[2] Sair"], 
        "menu_produtos" => ["Selecione a opção desejada: ", "\n[1]Mouse: R$50,00","\n[2]Headset: R$200,00","\n[3]Teclado: R$100,00"],
        "qtd" => "\nDigite a quantidade desejada: ",
        "voltar" => "\nDigite [0] para voltar ao menu inicial: ",
        "bye" => "\nObrigado pela preferência!"}

#hash de produtos
produtos = { "mouse" => 50.00, "headset" => 200.00, "teclado" => 100.00 }

#variável do subtotal
subtotal = 0.00

#Início do programa
puts mensagens['menu_principal']
opcao = gets.chomp.to_f


    #Laço de repetição de compra
    while opcao == 1
    puts mensagens['menu_produtos']
    opcao = gets.chomp.to_f
         
        case opcao
        when 1    
        puts mensagens['qtd']
        qtd = gets.chomp.to_f
        subtotal += produtos['mouse'] * qtd
        puts "\n #{qtd} Mouses"
    
        puts "\nSubtotal: R$#{subtotal}"
        puts mensagens['voltar']
        opcao = gets.chomp.to_f
        
            #condicional para voltar ao menu inicial
            if opcao == 0
            puts mensagens['menu_principal']
            opcao = gets.chomp.to_f
            end
        
        when 2
        puts mensagens['qtd']
        qtd = gets.chomp.to_f
        subtotal += produtos['headset'] * qtd
        puts "\n #{qtd} Headset"
        
        puts "\nSubtotal: R$#{subtotal}"
        puts mensagens['voltar']
        opcao = gets.chomp.to_f
            
            if opcao == 0
            puts mensagens['menu_principal']
            opcao = gets.chomp.to_f
            end
        
        when 3
        puts mensagens['qtd']
        qtd = gets.chomp.to_f
        subtotal += produtos['teclado'] * qtd
        puts "\n #{qtd} Teclados"
        
        puts "\nSubtotal: R$#{subtotal}"
        puts mensagens['voltar']
        opcao = gets.chomp.to_f

            if opcao == 0
            puts mensagens['menu_principal']
            opcao = gets.chomp.to_f
            end
        end 
    end #fim do laço

            if opcao == 2
                puts mensagens['bye']
                puts "Seus produtos foram os seguintes:"
                puts "\n #{qtd} Mouses\n #{qtd} Headsets\n #{qtd} Teclados"
                puts "\nO valor de sua compra foi de: R$ #{subtotal} Volte sempre!"
                
            end
