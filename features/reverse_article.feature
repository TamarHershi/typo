Feature: Reverse Article
  As an author
  In order to see the world in a diffrente way
  I want to reverse a blog

Background:
  Given the blog is set up
  And I am logged into the admin panel

  Scenario: reverse a blog
    Given I am on the manage articles page
    Then I should see "Manage articles"
    And I should see "My Shiny Weblog!"

  Scenario: Create blog page not shown when blog created
    Given the blog is set up
    When I am on the home page
    Then I should not see "My Shiny Weblog!"
    And I should see "Teh Blag"
