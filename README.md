# testeGuide
Logica em ruby para desafio Obras Bibliográficas

Requisitos
- ruby > 1.8 instalado

Introdução

Nomes de Autores de Obras Bibliográficas

O projeto consiste em formatar strings names para o formato americano para autores de livros e artigos, utilizando ruby.
Estrutura
Conforme o objetivo do projeto, foi estrurado os metodos de lógica, execucao e validacao em pastas diferentes, utilizei o framework de testes Cucumber para realizar o teste funcional e unitário dos retornos dos metodos, respeitando as regras de validacao contida na  especificacao do projeto.
A massa de dados esta armazenada e separada por tabelas no banco SQL Azure da Microsoft, cada tabelas tem sua particularidade, armazenando tipos de nomes para usarmos no teste, exemplo:
 
 Bancos:
   
   dbo.nomeUnique: Armazena nomes simples sem sobrenome (João, Pedro, Marcelo)
   
   dbo.NomeSobrenomeSimples: Armazena nome com sobre nome (João almeida)

O mesmo acontece para os nomes com preposição e herdeiro.

Features/testes_cases.feature

Cada cenário de teste é referente a cada tabela, tendo como particularidade o método específico para cada tabela.
As @tags acima de cada cenario te possibilita a realizar execuções separadas, caso queira executar somente um cenário . 

Execução:

Após clone do projeto precisamos baixar as dependencias de nosso projeto e para isso precisamos instalar a Gem Bundler que é responsavel por fazer isso para nós !

No terminal:
 > gem install bundler

Aguarde e em seguida:
 > bundler install

Para baixar todas as dependências setadas em nosoo Gemfile.
Após a realizacao desses passos basta digitar no terminal:

cucumber -t <@tag-desejada> ou cucumber -t @testes para executar todos os cenários

Observacao: 
Caso a execução retorne o seguinte  erro: 

"TinyTds::Error: Cannot open server 'testeserverguide' requested by the login. Client with IP address '189.40.88.207' is not allowed to access the server.  To enable access, use the Windows Azure Management Portal or run sp_set_firewall_rule on the master database to create a firewall rule for this IP address or address range.  It may take up to five minutes for this change to take effect."

Acesse a conta na Azure > Banco de dados SQL > testeGuide > Definir firewall do servidor > e adicione o ip retornado no erro acima no IP inicial e Final.

Dados de acesso ao banco no email.

