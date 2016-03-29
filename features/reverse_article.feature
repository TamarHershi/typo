Feature: Reverse Article
  As an author
  In order to see the world in a diffrente way
  I want to reverse a blog

Background:
  Given the blog is set up
  And I am logged into the admin panel

  Scenario: Successfully reverse articles
    Given I am on the new article page
    When I fill in "article_title" with "Test"
    And I fill in "article__body_and_extended_editor" with "Pink shirt"
    And I press "Publish"
    Then I should be on the admin content page
    When I follow "Reverse"
    Then I should see "shirt Pink"
