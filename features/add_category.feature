Feature: Create Category
  As an author
  In order to know what each blog is about
  I want to create categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add category
    Given I am on the admin content page
    When I follow "Categories"
    And I should be on the new category page
    When I fill in "Name" with "Baby Stuff"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Baby Stuff"
