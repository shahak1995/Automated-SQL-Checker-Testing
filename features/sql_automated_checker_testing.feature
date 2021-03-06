Feature: Sql Automated Checker
  As a student I want to be able to use the Sql Automated Checker

  Scenario: Student button on index page
    Given I am on the index page
    When I click on the student button
    Then I should be navigated to the student login page

  @log_out
  Scenario: Login credentials
    Given I am on the login page
    When I enter valid credentials
    Then I should be navigated to the questions page

  Scenario: Back button on login page
    Given I am on the login page
    When I press the back button on the login page
    Then I should be directed to the index page

  @clear_submitted_question_database
  Scenario: Save button on questions page
    Given I am logged in
    And I am on the questions page
    When I save each answer
    And I re-log
    Then I should be able to see saved answers in each field

  @log_out
  Scenario: Info page button
    Given I am logged in
    And I am on the questions page
    When I click on the info button
    Then I should be directed to the info page

  @log_out
  Scenario: Info Page back button
    Given I am logged in
    And I am on the info page
    When I click the back button on the info page
    Then I should be directed back to the questions page

  Scenario: Questions page log out button
    Given I am logged in
    And I am on the questions page
    When I click the log out button
    Then I should be directed to the login page

  @clear_submitted_question_database
  Scenario: Submit button on questions page
    Given I am logged in
    And I am on the questions page
    When I click the submit button
    Then I should be directed to the score page

  Scenario: Score page log out button
    Given I am logged in
    And I am on the score page
    When I click on the log out button
    Then I should be directed to the index page

  @log_out
  Scenario: Check details on score page with current student
    Given I am logged in
    When I am on the score page
    Then I should see the corresponding details for the current student

  @log_out
  Scenario: Student has completed test
    Given I have completed the test
    When I login
    Then I should be directed to the score page

  Scenario: Student passed the test
    Given I am logged in
    And I am on the questions page
    When I answer six questions right
    Then I should see Pass on my score page
    And thirty marks

  Scenario: Student fails the test
    Given I am logged in
    And I am on the questions page
    When I all questions wrong
    Then I should see Fail on my score page
    And zero marks
