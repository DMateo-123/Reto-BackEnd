Feature: Caso de prueba PUT

  Scenario Outline: Caso de prueba tipo PUT <Caso>

    Given url 'https://serverest.dev/' + 'usuarios/eHjI4975JpHfgqoi'
    When request
      """
      {
      "nome": "Admin Teste 7445",
      "email": "admin.teste7445@qa.com",
      "password": "teste123",
      "administrador": "true",
      }
    """
    And method PUT
    Then status 200
    And match response ==
  """
  {
    'message': '#string'
    }
  """
