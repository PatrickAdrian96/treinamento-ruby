#language: pt

Funcionalidade: Cadastrar Cliente
Como um cliente da loja online
Quero cadastrar uma conta
Para efetuar compras

@cadastro_dados_fixos
Cenário: Cadastrar cliente com dados válidos fixos
Dado que acesso a pagina de login/cadastro
E solicito um novo cadastro para o email 'teste@teste.com.br'
E preencho os campos do formulário com dados válidos fixos
Quando confirmo o cadastro 
Então deve ser direcionado para a pagina de minhã conta