Feature: Project
  Scenario: read delete token

    Given yo uso la authenticacion basica
    When envio GET request a la /api/authentication/token.json con el body
    """

    """

    Then el codigo de respuesta deberia ser 200
    And guardo el TokenString de la respuesta en token


    When envio DELETE request a la /api/authentication/token.json con el header

    """
    
    """



    Then el codigo de respuesta deberia ser 200
