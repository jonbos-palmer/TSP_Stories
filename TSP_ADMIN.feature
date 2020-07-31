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


Feature: New User Approval

	As a <Division> <Admin>
	I want to approve new user/client account
	So that I can maintain the integrity of the application data

	Scenario: First user of company
		Given a <Client> does not yet have presence on the application 
		When a user has created a profile for a <Client>
		*Then <Division> <Admin> should be notified to approve user account*
		*And <Division> <Admin> should be notified to approve client account*

	Scenario: Established company
		Given a <Client> has a presence on the application 
		When a user signed up for an account associated with <Client>
		*Then <Client> <Approver> for <Division> should be notified to approve user account*




		