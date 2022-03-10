Feature: Project
  Scenario: create update user

    When envio POST request a la /api/user.json con el body
    """
    {
        "Email": "paolaUPB5@todo.com",
        "FullName": "Paola Vilaseca",
        "Password": "12345"
    }
    """
    Then el codigo de respuesta deberia ser 200
    And el expected body deberia ser
    """
    {
      "Id": "IGNORE",
      "Email": "paolaUPB5@todo.com",
      "Password": null,
      "FullName": "Paola Vilaseca",
      "TimeZone": 0,
      "IsProUser": false,
      "DefaultProjectId": "IGNORE",
      "AddItemMoreExpanded": false,
      "EditDueDateMoreExpanded": false,
      "ListSortType": 0,
      "FirstDayOfWeek": 0,
      "NewTaskDueDate": -1,
      "TimeZoneId": "Pacific Standard Time"
    }
    """

    Given yo uso la authenticacion token
    When envio PUT request a la /api/user/0.json con el body
    """
    {
      "FullName": "Paola"
    }
    """
    Then el codigo de respuesta deberia ser 200
    And el atributo FullName deberia ser Paola

