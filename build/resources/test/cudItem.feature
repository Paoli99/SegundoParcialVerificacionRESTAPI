Feature: Item
  Scenario: create update delete item

    Given yo uso la authenticacion token

    When envio POST request a la /api/items.json con el body
    """
    {
      "Content":"NewItem",
      "ProjectId": 3984339
    }
    """
    Then el codigo de respuesta deberia ser 200
    And el expected body deberia ser
    """
    {
      "Id": "IGNORE",
      "Content": "NewItem",
      "ItemType": 1,
      "Checked": false,
      "ProjectId": 3984339,
      "ParentId": "IGNORE",
      "Path": "",
      "Collapsed": false,
      "DateString": null,
      "DateStringPriority": 0,
      "DueDate": "",
      "Recurrence": null,
      "ItemOrder": "IGNORE",
      "Priority": 4,
      "LastSyncedDateTime": "IGNORE",
      "Children": [],
      "DueDateTime": null,
      "CreatedDate": "IGNORE",
      "LastCheckedDate": null,
      "LastUpdatedDate": "IGNORE",
      "Deleted": false,
      "Notes": "",
      "InHistory": false,
      "SyncClientCreationId": null,
      "DueTimeSpecified": true,
      "OwnerId": "IGNORE"
    }
    """
    And guardo el Id de la respuesta en ID_ITEM


    When envio PUT request a la /api/items/ID_ITEM.json con el body
    """
      {
        "Content": "NewItemUpdate"
      }
    """
    Then  el codigo de respuesta deberia ser 200
    And el atributo Content deberia ser NewItemUpdate


    When envio DELETE request a la /api/items/ID_ITEM.json con el body
    """

    """
    Then el codigo de respuesta deberia ser 200
    And el atributo Content deberia ser NewItemUpdate