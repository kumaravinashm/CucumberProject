Feature: Hello
  Scenario: Search for the website
    Given I am on the Google homepage
    Then I will search for "Avinash"
    Then I can see "avinash mishra"
    Then I will click the about link


  Scenario: Login to the Flipkart
    Given I will visit Flipkart URL
    Then I will check title of the page should be "Online Shopping Site for Mobiles, Electronics, Furniture,"
    Then I will enter username "avinashnaa@gmail.com" And password as "tannupagla"
    When I will click "Login"
    Then Verify the user is "Kumar Avinash" or not