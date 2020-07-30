Feature: TSP admin features
	
	As a *division coordinator*
	I want to be able to administrate job orders, AE, and clients in my division
	So that I facilitate the connection between clients and AEs

	Scenario: Receiving an order with no AE attached
		Given a user does not have an *AE attached to their account/client*
		When they submit a job order to the portal
		Then I receive a [notification?/email?] allowing me to manually connect the order to an AE

	Scenario: Setting approvers
		Given a client has an active profile
		When I edit the clients approver(s)
		Then the new approvers should receive all new approval requests


Feature: New User Approval

	As a *division coordinator*
	I want to approve new user/client account
	So that I can maintain the integrity of the application data

	Scenario: First user of company
		Given a user has created a profile for a new client
		*Then I should be prompted to approve user account*
		*And I should be prompted to approve client account*

	Scenario: Established company
		Given a user has created a profile for a new client
		*I should be prompted to approve user account*

