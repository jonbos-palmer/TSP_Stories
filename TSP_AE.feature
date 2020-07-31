Feature: AE Portal

	As an AE at PG
	I want a concise summary of job orders in my division
	So that I can quickly fill the orders with clients



	Scenario: AE open job orders
		Given AE is notified of open job orders assigned to them
		When they log in to the TSP
		*Then they should see a dashboard with job orders assigned to them*



	** who creates AE profiles **