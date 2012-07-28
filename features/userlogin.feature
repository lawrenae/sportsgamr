Feature: User Login
    As a SportsGamr user
    I want to log into SportsGamr
    So that I can access the site

    Scenario: Login
        Given I am on the loginpage
        When I fill in "username" with "austin"
 		 And I fill in "password" with "powers"
        Then I should see "Welcome to SportsGamr"
