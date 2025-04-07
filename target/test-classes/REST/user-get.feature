Feature: Caso de prueba Get

  Scenario: Caso de prueba tipo GET
    Given url 'https://serverest.dev/' + 'usuarios'
    When method GET
    Then status 200
    And match response ==
  """
    {
      'quantidade': '#number',
      'usuarios': '#array'
    }
  """
