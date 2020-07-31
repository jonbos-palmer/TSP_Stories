Feature: Adding Account Executive 

		As an Admin
		I want to be able to add account executives to the system
		So that they can manage job orders

		Scenario: Adding an AE
			Given I am an admin
			And an AE needs an account
			When I submit their email to the platform
			Then the add AE workflow is triggered

		Scenario: Add AE Workflow
			Given an AE account creation request is submitted to the portal
			When they submit credentials 
			Then their account is created