Feature: User Dashboard
    As a SportsGamr user
    I want to quickly see current game opportunities
    So that I can place bets on the games I want 

    Scenario: User shown current account balance
        Given a logged in user
        When he visits the dashboard
        Then he should see be able to see his current account balance
