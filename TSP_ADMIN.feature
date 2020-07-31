Feature: TSP admin features
	
	As a <Division> <Admin>
	I want to be able to administrate job orders, AE, and clients in my division
	So that I facilitate the connection between clients and AEs

	Scenario: Setting approvers
		Given a client has an active profile
		When I edit the clients approver(s)
		Then the new approvers should receive all new approval requests from <Division>

	Scenario: Removing a user
		Given I have admin access controls
		And I have a request for <user> removal
		When I delete <user account>
		Then the <user> is removed