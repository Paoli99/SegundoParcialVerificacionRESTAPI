Feature: Project
  Scenario: create update user

    When envio POST request a la /api/user.json con el body
    """
    {
        "Email": "paolaUPB@todo.com",
        "FullName": "Paola Vilaseca",
        "Password": "12345"
    }
    """
    Then el codigo de respuesta deberia ser 200

    Given yo uso la authenticacion token
    When envio PUT request a la /api/user/0.json con el body
    """
    {
      "FullName": "Paola"
    }
    """
    Then el codigo de respuesta deberia ser 200
    And el atributo FullName deberia ser Paola

