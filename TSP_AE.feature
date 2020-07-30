Feature: AE Portal

	As an AE at PG
	I want a concise summary of job orders in my division
	So that I can quickly fill the orders with clients

	Scenario: AE open job orders
		Given I am an AE with an account on the TSP
		When I log in
		*Then I should see a dashboard with job orders assigned to me*