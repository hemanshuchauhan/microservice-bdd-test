@Headers
Feature: Testing getAccount

  @Smoke
  Scenario: Test get Account
    Given I am a JSON API consumer
    And I am executing test "GA1"
    When I request GET "/accounts/8e79edcf-01e7-2fa0-890e-243baa82c7fb"
    And I provide the headers
      | x-lbg-brand              | IF                                  |
      | x-lbg-txn-correlation-id | 1111111111                          |
      | Authorization            | Bearer 6L5UQiZ4NgNt2OgGq8qxHZxJ3uNb |
    Then I should get a status code of 200
    And the response value of "Data.Account[0].AccountId" should equal "8e79edcf-01e7-2fa0-890e-243baa82c7fb"
    And the response value of "Data.Account[0].NickName" should equal "Vivek's Current Account"
    And the response value of "Data.Account[0].Account[0].schemeName" should equal "UK.OBIE.SortCodeAccountNumber"
    And the response value of "Data.Account[0].Account[0].identification" should equal "11912092085439"
