require 'pry'
require 'pry-nav'

class Coverte_nome_autor

    def captura_prepositions_herdeiros(nome)
        @todos_nomes = Array.new
        @autores = Array.new
        for name_index in nome
            @autor = name_index.split(' ')
            puts "Entrada - #{@autor}" 
            puts "\n"
            cont = 0
            cont_nome = 0      
            @herdeiros_preposicao = Array.new
            nomes_herdeiro_preposicoes = ['dos', 'das','de', 'do', 'da', 'junior', 'filho', 'filha', 'neto', 'neta', 'sobrinho', 'sobrinha']
            quantidade = nomes_herdeiro_preposicoes.count - 1

            while cont <= quantidade
                nomes_herdeiro_preposicoes.each do |index|
                    if @autor[cont_nome] == index
                        @herdeiros_preposicao << index  
                    end
                end
                cont_nome += 1
                cont += 1
                @autores << @autor
            end
            @todos_nomes << self.formata_nome(@autor,@herdeiros_preposicao)
        
            puts "Saída - #{@todos_nomes.last}" 
            puts "\n"
        end
        return  @todos_nomes,nome
    end
    
    def formata_nome(*params)
        
        if params.last.empty? and params.first.count == 2
            ultimo_nome = params.first.first.capitalize
            primeiro_nome = params[0][1].upcase
            nome_completo = "#{primeiro_nome}, #{ultimo_nome}"           

        elsif params.last.empty? and params.first.count == 1      
            nome_completo = params.first.first.upcase
            
        elsif params.first.empty? == false and params.last.count == 1 || params.last.count == 2 || params.last.count > 3 

            params.last.each do |index|
                params.first.delete(index) 
                @preposicao = index if index.size <= 3
                @herdeiro =  index  if  index.size > 3             
            end
        end

        nome_completo = "#{@herdeiro.upcase}, #{params.first.last.upcase}" if params.first.count == 1 and @herdeiro.is_a?(String)
        nome_completo = "#{params.first[1].upcase} #{params.first.last.upcase} #{@herdeiro.upcase}, #{params.first.first.capitalize} #{@preposicao}" if params.first.count == 3 and @herdeiro.is_a?(String) and @preposicao.is_a?(String)
        nome_completo = "#{params.first[1].upcase} #{params.first.last.upcase} #{@herdeiro.upcase}, #{params.first.first.capitalize}" if params.first.count == 3 and @herdeiro.is_a?(String) and @preposicao.is_a?(String) == false 
        nome_completo = "#{params.first[1].upcase} #{params.first.last.upcase}, #{params.first.first.capitalize}  #{@preposicao}" if params.first.count == 3 and @preposicao.is_a?(String) and @herdeiro.is_a?(String) == false
        nome_completo = "#{params.first.last.upcase} #{@herdeiro.upcase}, #{params.first.first.capitalize} #{@preposicao}" if params.first.count != 3 and @preposicao.is_a?(String) and  @herdeiro.is_a?(String)
        nome_completo = "#{params.first.last.upcase} #{@herdeiro.upcase}, #{params.first.first.capitalize}"                if params.first.count != 1 and @herdeiro.is_a?(String) and @preposicao.is_a?(String) == false 
        nome_completo = "#{params.first.last.upcase} ,#{params.first.first.capitalize} #{@preposicao}"                     if params.first.count != 3 and @preposicao.is_a?(String) and @herdeiro.is_a?(String) == false  
        
        return nome_completo
    end
end


p Coverte_nome_autor.new.captura_prepositions_herdeiros(['Jose manoel filho da costa'])


