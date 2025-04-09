Feature: Caso de prueba GetID

  Scenario: Caso de prueba tipo GET ID positivo
    Given url 'https://serverest.dev/' + '/usuarios/0uxuPY0cbmQhpEz1'
    When method GET
    Then status 200
    And match response ==
  """
  {
    "nome": '#string',
    "email": '#string',
    "password": '#string',
    "administrador": '#string',
    "_id": '#string'
    }
  """

  Scenario: Caso de prueba tipo GET ID negativo
    Given url 'https://serverest.dev/' + '/usuarios/1238945567'
    When method GET
    Then status 400
    And print response
    And match response ==
  """
      {
      'id': '#string',
      }
  """