Entao("espero receber um tipo string") do
    Teste_Autor.new.valida_retorno_string
end

Entao("espero receber string em caixa alta") do
    Teste_Autor.new.valida_string_unica_maiuscula
end

Entao("espero receber sobrenome em upcase a frente do primeiro nome") do
    Teste_Autor.new.valida_sobrenome_upercase_com_herdeiro
end

Entao("espero visualizar preposicao do apos o primeiro nome") do
    Teste_Autor.new.valida_preposicao
end

Entao("espero visualizar herdeiro do apos o sobrenome") do
    Teste_Autor.new.valida_herdeiro
end

Entao("espero visualizar herdeiro do apos o sobrenome e preposicao apos primeiro nome") do
    Teste_Autor.new.valida_preposicao_herdeiro
end



