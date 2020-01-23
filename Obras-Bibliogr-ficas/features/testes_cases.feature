#language: pt 


#### REGRA ### - o sobrenome será igual a última parte do nome e deve ser apresentado em letras maiúsculas;
#se houver apenas uma parte no nome, ela deve ser apresentada em letras maiúsculas (sem vírgula): se a entrada for “ Guimaraes” , a saída deve ser “ GUIMARAES”;
#se a última parte do nome for igual a "FILHO", "FILHA", "NETO", "NETA", "SOBRINHO", "SOBRINHA" ou "JUNIOR" e houver duas ou mais partes antes, a penúltima parte fará parte do sobrenome. Assim: se a entrada for "Joao Silva Neto", a saída deve ser "SILVA NETO, Joao" ; se a entrada for "Joao Neto" , a saída deve ser "NETO, Joao";
#as partes do nome que não fazem parte do sobrenome devem ser impressas com a inicial maiúscula e com as demais letras minúsculas;
#"da", "de", "do", "das", "dos" não fazem parte do sobrenome e não iniciam por letra maiúscula.

@testes
Funcionalidade: Formatar nome para padrao especificado na regra 


@teste-valida_retorno_string
Cenario: Validar que retorno do metodo seja uma string
    Entao espero receber um tipo string


@teste-valida-string-upcase
Cenario: Validar que retorno seja uma string maiuscula
    Entao espero receber string em caixa alta


@teste-valida-sobrenome  
Cenario: Validar que retorno sobrenome esta em caixa alta e a frente do primeiro nome
    Entao espero receber sobrenome em upcase a frente do primeiro nome


@teste-valida-preposicao 
Cenario: Validar que preposicao esteja apos o primeiro nome
    Entao espero visualizar preposicao do apos o primeiro nome

@teste-valida-herdeiro 
Cenario: Validar que herdeiro do apos o sobrenome
    Entao espero visualizar herdeiro do apos o sobrenome


@teste-valida_preposicao_herdeiro
Cenario: Validar que herdeiro do apos o sobrenome e preposicao apos primeiro nome
    Entao espero visualizar herdeiro do apos o sobrenome e preposicao apos primeiro nome
