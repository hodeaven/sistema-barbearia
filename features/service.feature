Feature: service
  As a Admin
  I want to adicionar, remover, editar e visualizar um servico no sistema
  So that o cliente consiga escolher o servico que deseja da barbearia

  Scenario: Adicionar um Servico
    Given estou logado como administrador com o email 'admin@admin.com' e senha '123456'
    And estou na tela de criar um servico
    Then eu preencho os campos de nome 'Corte e barba' valor '25,00' e tempo '30'
    And clico em criar servico
    Then eu vejo a mensagem 'cadastro bem sucedido'

  Scenario: Adicionar um Servico com valor invalido
    Given estou logado como administrador com o email 'admin@admin.com' e senha '123456'
    And estou na tela de criar um servico
    Then eu preencho os campos de nome 'Corte e barba' valor '2' e tempo '30'
    And clico em criar servico
    Then eu vejo a mensagem 'valor invalido'

  Scenario: Adicionar um Servico com tempo invalido
    Given estou logado como administrador com o email 'admin@admin.com' e senha '123456'
    And estou na tela de criar um servico
    Then eu preencho os campos de nome 'Corte e barba' valor '25,00' e tempo '3'
    And clico em criar servico
    Then eu vejo a mensagem 'tempo invalido'

  Scenario: Adicionar um Servico sem nome
    Given estou logado como administrador com o email 'admin@admin.com' e senha '123456'
    And estou na tela de criar um servico
    Then eu preencho os campos de valor '25,00' e tempo '3'
    And clico no botao criar servico
    Then eu vejo a mensagem 'necessario preencher o campo de nome'

  Scenario: Adicionar um Servico sem nome
    Given estou logado como administrador com o email 'admin@admin.com' e senha '123456'
    And estou na tela de criar um servico
    Then eu preencho os campos de nome 'Corte e barba' e tempo '3'
    And clico no criar servico
    Then eu vejo a mensagem 'necessario informar um valor'

