Feature: Merge Articles
  As a the admin
  In order to condense similar articles
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully merge articles
    Given I am on the new article page
    When I fill in "article_title" with "Merge me!"
    And I fill in "article__body_and_extended_editor" with "I like tomato soup"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Hello World!"
    And I should see "Merge me!"
    When I go to the new article page
    And I fill in "merge" with "1"
    And I follow "Merge"
    Then I should be on the new article page
