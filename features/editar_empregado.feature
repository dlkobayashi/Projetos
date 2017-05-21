#language: pt
#utf-8

@editarFuncionario
Funcionalidade: editar empregado existente
	Eu como administrador
	Quero acessar o site
	Para realizar a edição do cadastro de um empregado


Cenário: editar cadastro do empregado existente no site
	Dado que eu estou no site orangehrm
	Quando eu realizo a edição do cadastro de um empregado
	Então o cadastro do empregado é alterado