Feature: Caso de prueba POST

  Scenario Outline: Caso de prueba tipo POST <Caso>

    Given url 'https://serverest.dev/' + '/usuarios'
    When request
      """
      {
      "nome": <Vnome>,
      "email": <Vemail>,
      "password": "teste",
      "administrador": "true"
      }
      """
    And method POST
    Then status <statusA>
    And match response ==
  """
  {
    'message': '#string',
  }
  """
    Examples:
      | Caso          | Vnome          | Vemail               | statusA |
      | Caso Positivo | 'Daniel Marco' | 'dmateoqa@qa.com.br' | 400     |
      | Email vacio   | 'Denis'        |                      | 400     |
      | Campos vacios |                |                      | 400     |
      | Email nulo    | Marc           | null                 | 400     |