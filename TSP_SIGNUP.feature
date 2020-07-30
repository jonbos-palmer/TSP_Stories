Feature: New Client Signup
	
	As a employer with a staffing requirement
	I want to sign up for an account with Palmer TSP
	So that I can submit job orders directly to PG

	Scenario: First user of client
		Given I am creating an account an an exmployee of a client without a presence
		When I submit my personal info
		*Then I should be prompted to create a client account*

	Scenario: Established client
		Given I am creating an accout for a client with an established profile
		When I create my account
		It should be *linked to the existing client profile*