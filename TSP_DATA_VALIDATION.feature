Feature: Form Data Validation
	As a user of the TSP
	I want my forms to be validated
	So I can be certain that I have provided PG what they need to fill my order

	Scenario: User signup data validation
		Given I am signing up for an account
		When register for an account with <Input>
		Then I receive a message stating <Error>

		cred 								| message
		[jon, email, password, password11] 	| passwords dont match
		[katie, email, p, p] 				| password too short

	Scenario: User sign in data validation
		Given the user is signing in to the portal
		When the user enters <Input>
		Then I receive <Error>

		Input 				 		| Error
		[bad_user, password] 		| usename is incorrect
		[username, bad_password] 	| password is incorrect


	Scenario: User profile update validation
		Given a user with id <ID> is signed in to the portal
		When they update their information with <Information>
		They receive <Message>


	
	MPC form?
