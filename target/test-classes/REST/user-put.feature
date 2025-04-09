Feature: Caso de prueba PUT

  Scenario: Caso de prueba tipo PUT

    Given url 'https://serverest.dev/' + 'usuarios/eHjI4975JpHfgqoi'
    When request
      """
      {
      "nome": "Admin Teste 7445",
      "email": "admin.teste74463@qa.com",
      "password": "teste123",
      "administrador": "true"
      }
    """
    And method PUT
    Then status 201
    And match response ==
  """
  {
    'message': '#string',
    '_id': '#string'
    }
  """



