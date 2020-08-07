Feature: Account

    As a user of any role type,
    I want to have an account
    So I can see and update my information

Scenario: User wants to see a profile that contains contact information
    Given I am a registered user
    When I select the profile icon
    Then I will see my information


Scenario: User update contact information
    Given I have an account type <Role>
    When I make a change to <Contact Information>
    And I save changes
    Then my information will be updated

    | Role 	   | Contact Information | 
    | User	   | First Name		     |
    | AE	   | Last Name			 | 
    | Admin	   | Phone Number		 | 
    | Approver | Email				 | 