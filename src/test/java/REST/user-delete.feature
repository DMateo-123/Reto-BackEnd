Feature: Caso de prueba DELETE

  Scenario: caso de prueba tipo DELETE positivo
    Given url 'https://serverest.dev/' + '/usuarios/xB5j8tViDATxFZqD'
    When method DELETE
    Then status 200
    And print response
    And match response ==
  """
  {
    'message': '#string'
    }
  """

  Scenario: caso de prueba tipo DELETE inválido
    Given url 'https://serverest.dev/' + '/usuarios/qbMqntef4iTOwWfg'
    When method DELETE
    Then status 200
    And print response
    And match response ==
  """
  {
    'message': '#string'
    }
  """