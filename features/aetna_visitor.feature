Feature: Site Functionality for Visitors

Scenario: Successful Login with Valid Credentials
  Given Visitor is on Home Page
  When Visitor scrolls to the bottom of the page
  And Visitor clicks on the informational links
  Then They are taken to the appropriate page
