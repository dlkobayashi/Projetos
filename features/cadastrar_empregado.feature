#language: pt
#utf-8

@cadastrarFuncionario
Funcionalidade: cadastrar novo empregado
	Eu como administrador
	Quero acessar o site
	Para realizar o cadastro de um empregado


Cenário: Cadastrar empregado no site
	Dado que eu estou no site orangehrm
	Quando eu realizo o cadastro de um novo empregado
	Então o empregado é cadastrado