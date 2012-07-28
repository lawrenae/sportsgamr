Feature: User Login
    As a SportsGamr user
    I want to log into SportsGamr
    So that I can access the site

    Scenario: User is greeted upon login
        Given That the user "austin" has an account
        When he logs in
        Then he should see "Welcome to SportsGamr"
