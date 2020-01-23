
 class Teste_Autor 

    def valida_retorno_string
        nome = Coverte_nome_autor.new.captura_prepositions_herdeiros(Data_Base.new.select_from("SELECT * FROM nomeUnique"))
        nome.first.each do |index|
            raise "ERRO - Retorno nao é uma string #{index.class}" if index.is_a?(String) == false
        end
    end

    def valida_string_unica_maiuscula
        string = Coverte_nome_autor.new.captura_prepositions_herdeiros(Data_Base.new.select_from("SELECT * FROM nomeUnique")) #valida que string retorne em caixa alta
        string.first.each do |index|
            raise "ERRO - String retornada nao está dentro da regra - #{index}" if /[[:upper:]]/.match(index) == nil
        end
    end

    def valida_sobrenome_upercase_com_herdeiro  ## metodo consiste em validar se o sobrenome esta em caixa alta a frente do primeiro nome, com ou sem nome de herdeiro
        string = Coverte_nome_autor.new.captura_prepositions_herdeiros(Data_Base.new.select_from("SELECT * FROM NomeSobrenomeSimples"))         
        cont = 0
        string.first.each do |index|
            sobrenome = index.split(',')            
            raise "ERRO - Sobrenome nao esta em caixa alta - #{sobrenome.first}" if /[[:upper:]]/.match(sobrenome.first) == nil            
            raise "ERRO - Sobrenome nao esta a frente do primeiro nome - #{sobrenome}" if sobrenome.first.capitalize != string.last[cont].split(' ').last.capitalize
            cont += 1
        end
    end

    def valida_preposicao  ## metodo consiste em validar que preposicao esteja a frente do primeiro nome
        string = Coverte_nome_autor.new.captura_prepositions_herdeiros(Data_Base.new.select_from("SELECT * FROM NomePreposicao"))         
        string.first.each do |index|
            parts = index.split(' ')
            raise "ERRO - Preposicao nao se encontra na ultima parte da string" if parts.last.size > 3
        end
    end
            
    def valida_herdeiro ##metodo consistem em validar que nome de herdeiro esta a frente do sobrenome em maiusculo

        string = Coverte_nome_autor.new.captura_prepositions_herdeiros(Data_Base.new.select_from("SELECT * FROM NomeHerdeiro"))         
        cont = 0
        string.first.each do |index|
            nome_tratado = index.split(' ')
            nome_tratado.delete!(',') if nome_tratado.include?(',')
            nome = string.last[cont].split(' ')
            raise "ERRO - Herdeiro nao esta no lugar correto" if nome_tratado[1].capitalize != nome[1].capitalize and nome_tratado[0].capitalize != nome.last.capitalize
           cont += 1
        end
    end
            
    def valida_preposicao_herdeiro
        string = Coverte_nome_autor.new.captura_prepositions_herdeiros(Data_Base.new.select_from("SELECT * FROM NomeHerdeiroPreposicao"))  ##metodo consiste em validar que nome de herdeiro fique apos o sobrenome e preposicao esteja a frente do primeiro nome        
        nomes_herdeiro_preposicoes = ['junior', 'filho', 'filha', 'neto', 'neta', 'sobrinho', 'sobrinha']
        
        string.first.each do |index|      
            nome_tratado = index.split(',')
            @part_nome_tratado = nome_tratado[0].split(' ')

            nomes_herdeiro_preposicoes.each do |herd|
                @flag = @part_nome_tratado.last.downcase == herd                
                break if @flag == true
            end
            
            raise "erro herdeiro" if @flag == false
            part_nome_tratado2 = nome_tratado[1].split(' ')
            raise "erro preposicao" if part_nome_tratado2.last.size > 3
        end
    end











        




    




        
        
        









end
 
 
 
 
