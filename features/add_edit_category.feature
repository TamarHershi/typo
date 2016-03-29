Feature: Add and Edit Category
  As an author
  In order to know what each blog is about
  I want to create categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add category
    When I follow "Categories"
    And I should be on the new category page
    When I fill in "Name" with "Baby Stuff"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Baby Stuff"


  Scenario: Successfully edit a category
    When I follow "Categories"
    When I follow "Edit"
    And I fill in "Name" with "Mommy Stuff"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Mommy Stuff"
